import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';

class ConversationTile extends StatelessWidget {
  final Stock stocks;
  final ChatHistory stock;
  const ConversationTile({
    super.key,
    required this.stocks,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      margin: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 42,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(stocks.logoUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Image.network(
              //   stocks.logoUrl,
              //   width: 42.w,
              //   height: 41.h,
              //   fit: BoxFit.cover,
              // ),
              SizedBox(height: 5.h),
              MdSnsText(
                stock.lastMessage != null
                    ? stock.lastMessage!.createdAt.millisecondsSinceEpoch
                          .timeAgoFromMilliseconds()
                    : "",
                variant: TextVariant.h5,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.color677FA4,
              ),
            ],
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MdSnsText(
                stock.symbol,
                variant: TextVariant.h2,
                fontWeight: TextFontWeightVariant.h1,
                color: AppColors.white,
              ),
              SizedBox(height: 2.h),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 2,
                child: MdSnsText(
                  stock.companyName.isNotEmpty
                      ? stock.companyName.split("-").first.trim()
                      : "",
                  color: AppColors.color677FA4,
                  variant: TextVariant.h3,
                  fontWeight: TextFontWeightVariant.h4,

                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 5.h),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: MdSnsText(
                  textOverflow: TextOverflow.ellipsis,
                  stock.lastMessage != null ? stock.lastMessage!.message : "",
                  maxLines: 1,
                  color: AppColors.color677FA4,
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h4,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MdSnsText(
                "\$${stocks.price.toStringAsFixed(2)}",
                variant: TextVariant.h2,
                fontWeight: TextFontWeightVariant.h1,
                color: AppColors.white,
              ),
              Row(
                children: [
                  stocks.changesPercentage < 0
                      ? Icon(Icons.arrow_drop_down, color: AppColors.redFF3B3B)
                      : Icon(Icons.arrow_drop_up, color: AppColors.color06D54E),
                  MdSnsText(
                    stocks.changesPercentage
                        .toStringAsFixed(2)
                        .replaceAll("-", ""),
                    color: stocks.changesPercentage < 0
                        ? AppColors.redFF3B3B
                        : AppColors.color06D54E,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ],
              ),
              SizedBox(
                width: 86.w,
                height: 15.h,
                child: Sparkline(
                  data: stocks.fiveDayTrend[0].data,
                  lineWidth: 2.0,
                  lineColor: stocks.changesPercentage < 0
                      ? AppColors.redFF3B3B
                      : AppColors.color06D54E,
                  pointsMode: PointsMode.none,
                  pointColor: Colors.white,
                  useCubicSmoothing: false,
                  sharpCorners: true,
                  fillMode: FillMode.below,
                  fillGradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.transparent],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
