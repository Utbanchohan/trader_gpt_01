import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/socket/providers/stocks_price.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/extensions/symbol_image.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';

class ConversationTile extends ConsumerStatefulWidget {
  final Stock stocks;
  final ChatHistory stock;
  const ConversationTile({
    super.key,
    required this.stocks,
    required this.stock,
  });

  @override
  ConsumerState<ConversationTile> createState() => _ConversationTileState();
}

class _ConversationTileState extends ConsumerState<ConversationTile> {
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
                  // image: DecorationImage(
                  //   image: NetworkImage(widget.stocks.logoUrl),
                  //   fit: BoxFit.cover,
                  // ),
                ),
              child:   ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SvgPicture.network(
          getItemImage(ImageType.stock, widget.stock.symbol),
            fit: BoxFit.cover,
            placeholderBuilder: (context) =>
                SizedBox(height: 41, width: 42, child: SizedBox()),
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
                widget.stock.lastMessage != null
                    ? widget.stock.lastMessage!.createdAt.millisecondsSinceEpoch
                          .timeAgoFromMilliseconds()
                    : "",
                size: 10,
                fontWeight: FontWeight.w400,
                color: AppColors.color677FA4,
              ),
            ],
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MdSnsText(
                widget.stock.symbol,
                size: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 2.h),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 2,
                child: MdSnsText(
                  widget.stock.companyName.isNotEmpty
                      ? widget.stock.companyName.split("-").first.trim()
                      : "",
                  color: AppColors.color677FA4,
                  fontWeight: FontWeight.w400,
                  size: 14,
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 5.h),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: MdSnsText(
                  textOverflow: TextOverflow.ellipsis,
                  widget.stock.lastMessage != null ? widget.stock.lastMessage!.message : "",
                  maxLines: 1,
                  color: AppColors.color677FA4,
                  fontWeight: FontWeight.w400,
                  size: 12,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MdSnsText(

                ref.watch(stocksStreamProvider)==widget.stocks?
                "\$${ref.watch(stocksStreamProvider).price.toStringAsFixed(2)}":widget.stocks.price.toStringAsFixed(2),
                size: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
              Row(
                children: [
                  widget.stocks.changesPercentage < 0
                      ? Icon(Icons.arrow_drop_down, color: AppColors.redFF3B3B)
                      : Icon(Icons.arrow_drop_up, color: AppColors.color06D54E),
                  MdSnsText(
                                  ref.watch(stocksStreamProvider)==widget.stocks ?
                ref.watch(stocksStreamProvider).changesPercentage.toStringAsFixed(2).replaceAll("-", ""):
                    widget.stocks.changesPercentage
                        .toStringAsFixed(2)
                        .replaceAll("-", ""),
                    color: widget.stocks.changesPercentage < 0
                        ? AppColors.redFF3B3B
                        : AppColors.color06D54E,
                    size: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                width: 86.w,
                height: 15.h,
                child: Sparkline(
                  data: 
                   ref.watch(stocksStreamProvider)==widget.stocks
             ?   ref.watch(stocksStreamProvider).fiveDayTrend[0].data!:
                   
                  
                  widget.stocks.fiveDayTrend[0].data!,
                  lineWidth: 2.0,
                  lineColor: widget.stocks.changesPercentage < 0
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
