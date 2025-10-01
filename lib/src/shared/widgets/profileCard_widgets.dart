import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ProfileCardWidget extends StatelessWidget {
  final String imagePath;
  final String designation;
  final String name;

  const ProfileCardWidget({
    Key? key,
    required this.imagePath,
    required this.designation,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      height: 210,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      // padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imagePath, height: 122.h, width: 122.w),
          ),
          SizedBox(height: 8),
          MdSnsText(
            designation,
            textAlign: TextAlign.center,
            color: AppColors.colorFAFAFC,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h4,
          ),
          const SizedBox(height: 4),
          MdSnsText(
            name,

            textAlign: TextAlign.start,
            color: AppColors.fieldTextColor,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h1,
            maxLines: 2,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}
