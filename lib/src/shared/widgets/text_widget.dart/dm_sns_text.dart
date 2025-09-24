import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum TextVariant { h1, h2, h3, h4, h5, h6, h7, h8 }

enum TextFontWeightVariant { h1, h2, h3, h4, h5, h6 }

class MdSnsText extends Text {
  MdSnsText(
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    Color color = Colors.black,
    double? height,
    double? letterSpacing,
    TextVariant variant = TextVariant.h3,
    TextFontWeightVariant fontWeight = TextFontWeightVariant.h2,
    FontStyle? fontStyle,
    TextDecoration? decoration,
    TextOverflow? textOverflow,
    TextOverflow? overflow,
  }) : super(
         style: GoogleFonts.plusJakartaSans(
           color: color,
           fontSize: _getFontSize(variant),
           fontWeight: _getFontWeight(fontWeight),
           height: height,
           fontStyle: fontStyle,
           decoration: decoration,
           decorationColor: color,
           letterSpacing: letterSpacing,
         ),
         overflow: textOverflow,
         textScaler: const TextScaler.linear(1.0),
       );
  static double _getFontSize(TextVariant variant) {
    switch (variant) {
      case TextVariant.h1:
        return 18;
      case TextVariant.h2:
        return 16;
      case TextVariant.h3:
        return 14;
      case TextVariant.h4:
        return 12;
      case TextVariant.h5:
        return 10;
      case TextVariant.h6:
        return 32;
      case TextVariant.h7:
        return 20;
      case TextVariant.h8:
        return 11;
    }
  }

  static FontWeight _getFontWeight(TextFontWeightVariant fontWeight) {
    switch (fontWeight) {
      case TextFontWeightVariant.h1:
        return FontWeight.bold;
      case TextFontWeightVariant.h2:
        return FontWeight.w600;
      case TextFontWeightVariant.h3:
        return FontWeight.w500;
      case TextFontWeightVariant.h4:
        return FontWeight.w400;
      case TextFontWeightVariant.h6:
        return FontWeight.w300;
      case TextFontWeightVariant.h5:
        return FontWeight.normal;
    }
  }
}
