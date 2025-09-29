import 'package:flutter/material.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';

class LoadingWidgetMarkdown extends StatelessWidget {
  const LoadingWidgetMarkdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width / 1.4,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.transparent,
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
    );
  }
}
