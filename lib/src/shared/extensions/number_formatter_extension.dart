import 'dart:math';

/// Optional: uncomment and add `intl` package to your pubspec.yaml for locale formatting
/// import 'package:intl/intl.dart';

class Filters {
  /// Convert numbers to concise string like the original JS function.
  /// Parameters:
  /// - input: numeric or string
  /// - isPrice: whether to prefix $ or format as price
  /// - isAbs: whether to return absolute value (drop negative sign)
  /// - containerWidth: used by fetchLowestValues to estimate digits shown
  /// - isRound: whether to apply rounding/suffix logic (K/M/B/T)
  /// - fromChart: when true, don't add currency prefix for chart display
  /// - alwaysShowTwoDecimal: force two decimals for prices
  static String systemNumberConvention(
    dynamic input, {
    bool isPrice = false,
    bool isAbs = false,
    int containerWidth = 50,
    bool isRound = true,
    bool fromChart = false,
    bool alwaysShowTwoDecimal = false,
  }) {
    try {
      if (input == null) return '0';
      double? value;
      if (input is String) {
        value = double.tryParse(input);
        if (value == null) {
          return input;
        }
      } else if (input is num) {
        value = input.toDouble();
      } else {
        // unknown type
        return input;
      }
      if (value == null || value.isNaN) return '0';

      bool isNegative = value < 0;
      value = value.abs();

      String result = '0';
      String suffix = '';

      if (isRound) {
        if (value >= 1.0e12) {
          double trillion = (value / 1.0e12);
          result = (((trillion * 100).roundToDouble()) / 100).toString();
          suffix = 'T';
        } else if (value >= 1.0e9) {
          double billion = (value / 1.0e9);
          result = (((billion * 100).roundToDouble()) / 100).toString();
          suffix = 'B';
        } else if (value >= 1.0e6) {
          double million = (value / 1.0e6);
          result = (((million * 100).roundToDouble()) / 100).toString();
          suffix = 'M';
        } else if (value >= 10000) {
          result = (value / 1000).toStringAsFixed(2);
          result = double.parse(result).toString();
          suffix = 'K';
        } else if (value >= 1000) {
          result = value.toStringAsFixed(0);
        } else if (value >= 100) {
          result = double.parse(value.toStringAsFixed(2)).toString();
        } else if (value >= 10) {
          result = double.parse(value.toStringAsFixed(2)).toString();
        } else if (value < 1 && value >= 0.0001) {
          result = double.parse(value.toStringAsFixed(4)).toString();
        } else if (value < 0.0001) {
          result = fetchLowestValues(value, containerWidth);
          // result = formatWithZeroPower(value);
        } else {
          result = double.parse(value.toStringAsFixed(2)).toString();
        }
      } else {
        result = double.parse(value.toStringAsFixed(2)).toString();
      }

      if (isAbs) {
        // result already absolute string
      }

      if (suffix.isNotEmpty) result = '$result$suffix';

      // Price specific formatting
      if (isPrice) {
        // If original absolute value >= 1000, format with grouping
        // Optional: use NumberFormat.currency or NumberFormat.decimalPattern for locale grouping
        // Example (requires intl):
        // if (value >= 1000) result = NumberFormat.decimalPattern().format(double.tryParse(result) ?? double.parse(value.toString()));
        if (value >= 1000) {
          // best-effort grouping without intl:
          final numVal = double.tryParse(value.toString());
          if (numVal != null && !numVal.isNaN) {
            // Insert simple grouping for integer part
            final parts = numVal
                .toStringAsFixed(
                  (alwaysShowTwoDecimal || result.contains('.')) ? 2 : 0,
                )
                .split('.');
            parts[0] = _addGrouping(parts[0]);
            result = parts.join('.');
          }
        }

        if (isNegative && !isAbs) {
          // negative price
          if (!fromChart) {
            result = '-\$${result}';
          } else {
            result = '-$result';
          }
        } else {
          if (alwaysShowTwoDecimal) {
            // Ensure two decimals
            final v = double.tryParse(
              result.replaceAll(RegExp(r'[^\d\.\-]'), ''),
            );
            if (v != null) {
              result = v.toStringAsFixed(2);
            } else {
              // if result contains suffix like K/M/B/T just append .00
              if (suffix.isNotEmpty && !result.contains('.')) {
                result = result.replaceAll(RegExp(r'([KMBT])$'), '.00\$1');
              } else {
                // fallback
                result = result;
              }
            }
            if (!fromChart) result = '\$${result}';
          } else if (fromChart) {
            // leave as is (no $)
            result = result;
          } else {
            result = '\$${result}';
          }
        }
      } else {
        // Non-price formatting adjustments
        if (value < 1000 && value >= 1) {
          double r = double.parse(value.toString());
          r = (r * 100).roundToDouble() / 100;
          // Remove trailing .0 if present
          if (r == r.roundToDouble()) {
            result = r.toStringAsFixed(0);
          } else {
            result = r.toString();
          }
        } else if (value < 1) {
          double v = double.parse(value.toString());
          result = v.toStringAsFixed(2);
          if (!isAbs && !isPrice && result == '0.00') {
            // preserve original small value as much as possible
            result = value.toString();
          }
        }
        if (isNegative && !isAbs) {
          result = '-$result';
        }
      }

      return result;
    } catch (e) {
      return '0';
    }
  }

  /// Helper to generate a readable string for very small values (< 0.0001).
  /// This is an approximation of the JS logic that used exponent/mantissa and container width.
  static String fetchLowestValues(double input, int containerWidth) {
    try {
      const int fontSize = 14;
      // Derive number of characters that fit (approx)
      final int maxCharacters = max(1, (containerWidth / fontSize).floor());
      // Convert to exponential form: mantissa e exponent
      final parts = input.toStringAsExponential().split('e');
      double mantissa = double.tryParse(parts[0]) ?? 0.0;
      int exponent = int.tryParse(parts[1]) ?? 0;
      if (exponent < 0) {
        int leadingZeros = exponent.abs() - 1;
        int decimalPlaces = max(0, maxCharacters - 4);
        // Build significant digits from mantissa shifted by leadingZeros
        double shifted = mantissa * pow(10, leadingZeros);
        String sig = shifted
            .toStringAsFixed(decimalPlaces)
            .replaceAll('.', '')
            .replaceAll(RegExp(r'^0+'), '');
        if (sig.isEmpty) {
          // fallback: produce scientific notation
          return input.toString();
        }
        sig = sig.length > 4 ? sig.substring(0, 4) : sig;
        // Build string like 0.00...significants
        final zeros = '0' * leadingZeros;
        final result = '0.0${_superscript(zeros.length)}${sig}';
        return result;
      } else {
        return input.toString();
      }
    } catch (e) {
      return input.toString();
    }
  }

  static String formatWithZeroPower(double number) {
    // Convert to string with enough precision to keep zeros
    String numStr = number.toStringAsFixed(10);
    numStr = numStr.replaceFirst(RegExp(r'0+$'), ''); // remove trailing zeros

    if (!numStr.contains('.')) return numStr; // not a decimal

    final parts = numStr.split('.');
    final whole = parts[0];
    final decimal = parts[1];

    // Find sequence of zeros
    final match = RegExp(r'0+').firstMatch(decimal);
    if (match == null ||
        match.end == decimal.length ||
        match.end - match.start < 2) {
      // no long zero sequence or nothing meaningful
      return numStr;
    }

    final zeroCount = match.end - match.start;
    final beforeZeros = decimal.substring(
      0,
      match.start + 1,
    ); // include first 0
    final afterZeros = decimal.substring(match.end);

    return '$whole.${beforeZeros}${_superscript(zeroCount)}$afterZeros';
  }

  static String _superscript(int n) {
    const supDigits = {
      '0': '⁰',
      '1': '¹',
      '2': '²',
      '3': '³',
      '4': '⁴',
      '5': '⁵',
      '6': '⁶',
      '7': '⁷',
      '8': '⁸',
      '9': '⁹',
    };
    return n.toString().split('').map((d) => supDigits[d]!).join('');
  }

  /// Simple grouping for integer part (no intl)
  static String _addGrouping(String intPart) {
    bool negative = intPart.startsWith('-');
    String s = negative ? intPart.substring(1) : intPart;
    final buffer = StringBuffer();
    int count = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      buffer.write(s[i]);
      count++;
      if (count == 3 && i > 0) {
        buffer.write(',');
        count = 0;
      }
    }
    final grouped = buffer.toString().split('').reversed.join();
    return negative ? '-$grouped' : grouped;
  }
}
