import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
         style: GoogleFonts.plusJakartaSans(
           color: color,
           fontSize: size.sp,
           height: height,
           fontStyle: fontStyle,
           fontWeight: fontWeight,
           decoration: decoration,
           decorationColor: color,
           letterSpacing: letterSpacing,
         ),
         overflow: textOverflow,
         textScaler: const TextScaler.linear(
           1.0,
         ),
       );
}
