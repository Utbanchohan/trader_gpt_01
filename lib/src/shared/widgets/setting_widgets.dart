import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class SettingBottomSheet extends StatelessWidget {
  String? title;
  String? description;
  SettingBottomSheet({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.gradient,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.color091224,

          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.color1B254B,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MdSnsText(
                        title ?? "",
                        color: AppColors.white,
                        variant: TextVariant.h2,
                        fontWeight: TextFontWeightVariant.h4,
                      ),
                      SizedBox(height: 8),

                      MdSnsText(
                        description ?? "",
                        color: AppColors.color9EAAC0,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
 
  }
}
