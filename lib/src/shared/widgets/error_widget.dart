import 'package:flutter/material.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../core/theme/app_colors.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;

  const CustomErrorWidget({super.key, this.message = "Something went wrong"});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MdSnsText(
        message,
        color: AppColors.colorFAFAFC,
        variant: TextVariant.h2,
        fontWeight: TextFontWeightVariant.h3,
      ),
    );
  }
}
