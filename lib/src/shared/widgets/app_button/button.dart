import 'package:flutter/material.dart';

import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/loading_widget.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    required this.bgColor,
    this.borderColor = Colors.transparent,
    this.icon,
    this.padding,
    this.margin,
    this.buttonSize,
    this.fontSize = 14,
    this.borderRadius = 8,
    this.isLoading = false,
    this.textColor = AppColors.white,
    this.fontWeight = FontWeight.w500,
  });

  final VoidCallback onPressed;
  final Widget? icon;
  final String title;
  final Size? buttonSize;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double fontSize;
  final double borderRadius;
  final Color textColor;
  final FontWeight fontWeight;
  final bool isLoading;
  final Color bgColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        clipBehavior: Clip.none,
        onPressed: isLoading ? () {} : onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          fixedSize: buttonSize,

          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Container(
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          alignment: Alignment.center,
          child: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: LoadingWidget(height: 20, width: 20, color: textColor),
                )
              : Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MdSnsText(
                      variant: TextVariant.h3,
                      fontWeight: TextFontWeightVariant.h3,

                      title,
                      height: 0,

                      color: textColor,
                    ),
                    if (icon != null) ...[const SizedBox(width: 8), icon!],
                  ],
                ),
        ),
      ),
    );
  }
}
