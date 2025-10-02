import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:trader_gpt/utils/constant.dart';

class WelcomeWidget extends StatelessWidget {
  final bool showCompanyBox; // agar company box dikhana ho
  final List<String> questions; // 👈 questions list parameter
  final String? companyText;
  final ValueChanged<String>? onQuestionTap; // 👈 callback

  const WelcomeWidget({
    super.key,
    this.showCompanyBox = false,
    this.companyText,
    this.questions = const [],
    this.onQuestionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.6.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images.tGPTBrandMark.path,
            height: 82.h,
            width: 82.w,
          ),
          SizedBox(height: 17.h),
          SizedBox(
            child: MdSnsText(
              "Welcome to TradersGPT",
              textAlign: TextAlign.center,
              letterSpacing: 0,
              color: AppColors.white,
              variant: TextVariant.h6,
              fontWeight: TextFontWeightVariant.h1,
            ),
          ),
          SizedBox(height: 15.h),
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 1.3,
            // width: 296.w,
            child: MdSnsText(
              textAlign: TextAlign.center,
              "Discover anything about the markets, by just asking the intelligent Agent.",
              color: AppColors.white,
              variant: TextVariant.h2,
              letterSpacing: 0,
              fontWeight: TextFontWeightVariant.h4,
            ),
          ),
          if (showCompanyBox && questions.isNotEmpty) ...[
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: min(questions.length, 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (onQuestionTap != null) {
                        onQuestionTap!(questions[index]);
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: AppColors.color01B254B,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.images.prefixIcon.path,
                            height: 36.h,
                            width: 36.w,
                          ),
                          AppSpacing.w10,
                          Expanded(
                            child: MdSnsText(
                              questions[index],
                              variant: TextVariant.h3,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return AppSpacing.h20;
                },
              ),
            ),
          ],
        ],
      ),
    );
  }
}
