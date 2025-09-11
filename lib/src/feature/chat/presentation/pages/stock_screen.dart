import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/stock_widget.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../core/routes/routes.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({super.key});

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
                      context.goNamed(AppRoutes.chatPage.name);

          },
        ),
        backgroundColor: AppColors.primaryColor,

        scrolledUnderElevation: 0,
        animateColor: false,

        title: MdSnsText(
          "Stock",
          size: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
      ),
      body: ListView.separated(
        shrinkWrap: true,

        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return StockWidget(
            logoPath: Assets.images.apple.path,
            symbol: "TSLA",
            company: 'Tesla, Inc.',
            description: 'Provide a company overview for...',
            price: '450.00',
            change: '+50',
            percent: '(+3.23%)',
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 0, color: AppColors.color1B254B);
        },
      ),
    );
  }
}
