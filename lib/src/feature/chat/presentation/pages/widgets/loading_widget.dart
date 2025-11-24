import 'package:flutter/material.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';

class LoadingWidgetMarkdown extends StatelessWidget {
  const LoadingWidgetMarkdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // LEFT: Thinking Bubble
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.bubbleColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                MdSnsText(
                  "Thinking",
                  color: AppColors.white,
                  variant: TextVariant.h3,
                  fontWeight: TextFontWeightVariant.h1,
                ),
                Image.asset(
                  Assets.images.microinteractionsPreloader03.path,
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
              ],
            ),
          ),

          SizedBox(width: 20),
          MdSnsText(
            "Skip",
            color: AppColors.white,
            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h1,
          ),
        ],
      ),
    );
  }
}
