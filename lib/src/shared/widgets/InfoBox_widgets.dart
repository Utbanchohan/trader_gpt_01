import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class InfoBoxGrid extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  final companyImages = [
    {
      "image": "assets/images/4.png",
      "title": "Headquarter",
      "value": "One Microsoft Way",
    },
    {"image": "assets/images/ab-6.png", "title": "Country", "value": "US"},
    {
      "image": "assets/images/ab-4.png",
      "title": "Employees",
      "value": "228000",
    },
    {
      "image": "assets/images/ab-5.png",
      "title": "Website",
      "value": "microsoft.com",
    },
  ];
  InfoBoxGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: companyImages.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) {
        final item = companyImages[index];
        return Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            color: AppColors.color0xFF171E40,
            borderRadius: BorderRadius.circular(25.75.h),
          ),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // 👈 image top, text bottom
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: AppColors.color0xFF1C2648,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset(
                  item["image"]!,
                  height: 24.h,
                  width: 24.w,
                  fit: BoxFit.contain,
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MdSnsText(
                    item["title"].toString(),
                    color: AppColors.fieldTextColor,
                    variant: TextVariant.h2,
                    fontWeight: TextFontWeightVariant.h1,
                  ),
                  // SizedBox(height: 6.h),
                  MdSnsText(
                    item["value"].toString(),
                    color: AppColors.white,
                    variant: TextVariant.h2,
                    fontWeight: TextFontWeightVariant.h1,
                  ),
                  SizedBox(height: 6.h),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
