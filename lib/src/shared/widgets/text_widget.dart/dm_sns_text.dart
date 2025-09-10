import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MdSnsText extends Text {
  MdSnsText(
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    Color color = Colors.black,
    double? height,
    double? letterSpacing,
    double size = 14,
    FontWeight fontWeight = FontWeight.w400,
    FontStyle? fontStyle,
    TextDecoration? decoration,
    TextOverflow? textOverflow,
  }) : super(
         textDirection: TextDirection.ltr,
         overflow: textOverflow,
         style: GoogleFonts.plusJakartaSans(
           color: color,
           fontSize: size,
           height: height,
           fontStyle: fontStyle,
           fontWeight: fontWeight,
           decoration: decoration,
           decorationColor: color,
           letterSpacing: letterSpacing,
         ),
       );
}
