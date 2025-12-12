import 'dart:math';
import 'dart:typed_data';
import 'package:image/image.dart' as img;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension Uint8ListImageExtensions on Uint8List {
  /// Checks if the image has the exact resolution (width x height).
  bool hasResolution(int targetWidth, int targetHeight) {
    final decoded = img.decodeImage(this);
    if (decoded == null) return false;
    final value =
        decoded.width == targetWidth && decoded.height == targetHeight;
    debugPrint("hasResolution $value");
    return value;
  }

  /// Checks if the image has the specified aspect ratio (e.g., 3/2 for 12:8).
  /// Optionally accepts a [tolerance] (default: 0.01) for float precision.
  bool hasAspectRatio(double targetRatio, {double tolerance = 0.01}) {
    final decoded = img.decodeImage(this);
    if (decoded == null) return false;

    final actualRatio = decoded.width / decoded.height;
    final value = (actualRatio - targetRatio).abs() < tolerance;
    debugPrint("hasAspectRatio $value");
    return value;
  }
}

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return split(' ')
        .map(
          (word) => word.isNotEmpty
              ? '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}'
              : '',
        )
        .join(' ');
  }

  String getImagePath() {
    return 'packages/shared/$this';
  }
}

String formatDateMMDDYYYY(String date) {
  try {
    return DateFormat('MM/dd/yyyy').format(DateTime.parse(date));
  } catch (_) {
    return '-';
  }
}

String formatDateDDMMYY(String date) {
  try {
    return DateFormat('dd/MM/yy').format(DateTime.parse(date));
  } catch (e) {
    final parts = date.split(',');
    if (parts.length == 2) {
      final mm = int.tryParse(parts[0]);
      final yy = int.tryParse(parts[1]);

      if (mm != null && yy != null) {
        // Convert 2-digit year into full year → 2000–2099
        final fullYear = 2000 + yy;

        final dt = DateTime(fullYear, mm, 1);
        return DateFormat('dd/MM/yy').format(dt);
      }
    }

    // Fallback
    return date;
  }
}

String formatDateMMddYY(String date) {
  try {
    final inputFormat = DateFormat('yyyy-MM-dd');
    final outputFormat = DateFormat('MMM dd,yyyy');

    final parsedDate = inputFormat.parse(date);
    final formatted = outputFormat.format(parsedDate);
    return formatted;
  } catch (_) {
    return '-';
  }
}

String formatNumbers(num? number) {
  if (number != null) {
    String formatted = NumberFormat.decimalPattern().format(number);
    return formatted;
  } else {
    return "0";
  }
}

extension IntExtension on int {
  String getFileSizeString() {
    int bytes = this;
    const suffixes = ["b", "kb", "mb", "gb", "tb"];
    if (bytes == 0) return '0${suffixes[0]}';
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, i)).toStringAsFixed(1)) + suffixes[i];
  }

  String timeAgoFromMilliseconds() {
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this);
    final Duration diff = DateTime.now().difference(dateTime);

    if (diff.inSeconds < 60) {
      return "just now";
    } else if (diff.inMinutes < 60) {
      return "${diff.inMinutes} min";
    } else if (diff.inHours < 24) {
      return "${diff.inHours} h";
    } else if (diff.inDays < 7) {
      return "${diff.inDays} d";
    } else if (diff.inDays < 30) {
      final weeks = (diff.inDays / 7).floor();
      return "${weeks} w";
    } else if (diff.inDays < 365) {
      final months = (diff.inDays / 30).floor();
      return "${months} m";
    } else {
      final years = (diff.inDays / 365).floor();
      return "${years} y";
    }
  }
}

extension NumberFormatter on num {
  String toShortString() {
    if (this >= 1000000) {
      return "${(this / 1000000).toStringAsFixed(this % 1000000 == 0 ? 0 : 1)}M";
    } else if (this >= 1000) {
      return "${(this / 1000).toStringAsFixed(this % 1000 == 0 ? 0 : 1)}k";
    } else {
      return toStringAsFixed(0);
    }
  }

  String get ordinal {
    if (this % 100 >= 11 && this % 100 <= 13) {
      return '${this}th';
    }
    switch (this % 10) {
      case 1:
        return '${this}st';
      case 2:
        return '${this}nd';
      case 3:
        return '${this}rd';
      default:
        return '${this}th';
    }
  }
}

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

enum DeviceType { mobile, tab, web }

extension ContextExtension on BuildContext {
  DeviceType get deviceType {
    var width = MediaQuery.of(this).size.width;
    if (width <= 500) {
      return DeviceType.mobile;
    } else if (width > 500 && width <= 1270) {
      return DeviceType.tab;
    } else {
      return DeviceType.web;
    }
  }

  bool get isMobile => deviceType == DeviceType.mobile;

  bool get isTab => deviceType == DeviceType.tab;

  bool get isWeb => deviceType == DeviceType.web;
}

extension MediaQuerySizeExtension on BuildContext {
  Size get mediaSize => MediaQuery.sizeOf(this);
  double get mediaWidth => mediaSize.width;
  double get mediaHeight => mediaSize.height;
  double get shortestSide => mediaSize.shortestSide;
  double get longestSide => mediaSize.longestSide;
}
