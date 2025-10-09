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
      // width: 122.w,
      height: 210.h,
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
            child: imagePath.isEmpty
                ? Image.network(
                    imagePath,
                    height: 122.h,
                    width: 122.w,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    "assets/images/Placeholderimage.png",
                    height: 122.h,
                    width: 122.w,
                    fit: BoxFit.cover,
                  ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: 122.w,
            child: MdSnsText(
              designation,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              color: AppColors.colorFAFAFC,
              variant: TextVariant.h4,
              fontWeight: TextFontWeightVariant.h4,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 122.w,
            child: MdSnsText(
              name,

              textAlign: TextAlign.start,
              color: AppColors.fieldTextColor,
              variant: TextVariant.h4,
              fontWeight: TextFontWeightVariant.h1,
              maxLines: 1,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}
