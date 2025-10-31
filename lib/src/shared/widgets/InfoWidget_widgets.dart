import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/chat/domain/model/updates_questions_model/updates_questions_model.dart';

class InfoWidget extends StatelessWidget {
  List<AnalysisTask> updatesAskStream = [];
  InfoWidget({required this.updatesAskStream});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
        color: AppColors.color0xFF1B254B,
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🟦 Title
          MdSnsText(
            updatesAskStream.isNotEmpty ? updatesAskStream[0].definition : "",
            color: AppColors.white,
            variant: TextVariant.h2,
            fontWeight: TextFontWeightVariant.h4,
          ),
          SizedBox(height: 5.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: AppColors.color0xFF12B981, size: 12),
              SizedBox(width: 8.w),
              MdSnsText(
                "Completed",
                color: AppColors.color0xFF9EAAC0,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
              ),
            ],
          ),
          SizedBox(height: 5.h),
          updatesAskStream.isNotEmpty &&
                  updatesAskStream[0].childTasks != null &&
                  updatesAskStream[0].childTasks!.isNotEmpty
              ? SizedBox(
                  height: 100.h,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: updatesAskStream[0].childTasks!.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return MdSnsText(
                        updatesAskStream[0].childTasks![index].description,
                        color: AppColors.color0xFF9EAAC0,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                      );
                    },
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
