import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/socket/providers/stocks_price.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/extensions/price_calculation.dart';
import '../../../../core/extensions/symbol_image.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../shared/extensions/number_formatter_extension.dart';
import '../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:intl/intl.dart';

class ConversationTile extends ConsumerStatefulWidget {
  final Stock stocks;
  final ChatHistory stock;

  ConversationTile({super.key, required this.stocks, required this.stock});

  @override
  ConsumerState<ConversationTile> createState() => _ConversationTileState();
}

class _ConversationTileState extends ConsumerState<ConversationTile> {
  final compactFormatter = NumberFormat.compactCurrency(
    locale: "en",
    symbol: "\$",
    decimalDigits: 2,
  );
  String getAgoText(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);

    if (diff.inMinutes < 1) return "Just now";
    if (diff.inMinutes < 60) return "${diff.inMinutes} min ago";
    if (diff.inHours < 24) return "${diff.inHours} hr ago";
    // if (diff.inDays == 1) return "Yesterday";

    return "${diff.inDays} days ago";
  }

  @override
  Widget build(BuildContext context) {
    final stockManagerState = ref.watch(stocksManagerProvider);
    final liveStock = stockManagerState[widget.stock.stockId];
    String change = liveStock != null && liveStock.stockId.isNotEmpty
        ? PriceUtils.getChangesPercentage(
                        liveStock.price,
                        liveStock.previousClose,
                      ) !=
                      null &&
                  liveStock.price != liveStock.previousClose
              ? PriceUtils.getChangesPercentage(
                  liveStock.price,
                  liveStock.previousClose,
                )!.toStringAsFixed(2)
              : widget.stocks.pct_change
        : widget.stocks.pct_change;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      // margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  EdgeInsets.only(right: 10.w),
            child: Column(
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: widget.stock.type.toLowerCase() == "crypto"
                        ? Container(
                            color: AppColors.redFF3B3B,
                            child: Image(
                              height: 41,
                              width: 42,
                              image: NetworkImage(
                                getItemImage(
                                  ImageType.crypto,
                                  widget.stock.symbol,
                                ),
                              ),
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return SvgPicture.network(
                                  "https://cdn-images.traderverse.io/crypto_dummy.svg",
                                  fit: BoxFit.cover,
                                );
                              },
                            ),
                          )
                        : SvgPicture.network(
                            getItemImage(ImageType.stock, widget.stock.symbol),
                            fit: BoxFit.cover,
                            placeholderBuilder: (context) => SizedBox(
                              height: 41,
                              width: 42,
                              child: SvgPicture.network(
                                "https://cdn-images.traderverse.io/stock_dummy.svg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            errorBuilder: (context, error, stackTrace) {
                              return SvgPicture.network(
                                "https://storage.googleapis.com/analytics-images-traderverse/stock/mobile_app/TGPT-Blue.svg",
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                  ),
                ),
            
                // Image.network(
                //   stocks.logoUrl,
                //   width: 42.w,
                //   height: 41.h,
                //   fit: BoxFit.cover,
                // ),
                SizedBox(height: 8),
                Container(
                  width: 60.w,
                  alignment: Alignment.center,
                  child: MdSnsText(
                    getAgoText(
                      widget.stock.lastMessage != null
                          ? DateTime.fromMillisecondsSinceEpoch(
                              widget
                                  .stock
                                  .lastMessage!
                                  .createdAt
                                  .millisecondsSinceEpoch,
                            )
                          : DateTime.fromMillisecondsSinceEpoch(
                              widget.stock.createdAt.millisecondsSinceEpoch,
                            ),
                    ),
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.color677FA4,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MdSnsText(
                widget.stock.symbol,
                variant: TextVariant.h2,
                fontWeight: TextFontWeightVariant.h1,
                color: AppColors.white,
              ),
              SizedBox(height: 2),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 2,
                child: MdSnsText(
                  widget.stock.companyName.isNotEmpty
                      ? widget.stock.companyName.split("-").first.trim()
                      : "",
                  color: AppColors.color677FA4,
                  variant: TextVariant.h3,
                  fontWeight: TextFontWeightVariant.h4,

                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: MdSnsText(
                  textOverflow: TextOverflow.ellipsis,
                  widget.stock.lastMessage != null
                      ? widget.stock.lastMessage!.message
                      : "No Chats yet!",
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
                liveStock != null
                    ? Filters.systemNumberConvention(
                        liveStock.price,
                        isPrice: true,
                        isAbs: false,
                      )
                    : Filters.systemNumberConvention(
                        widget.stocks.price,
                        isPrice: true,
                        isAbs: false,
                      ),
                variant: TextVariant.h2,
                fontWeight: TextFontWeightVariant.h1,
                color: AppColors.white,
              ),
              Row(
                children: [
                  change.contains("-")
                      ? Icon(Icons.arrow_drop_down, color: AppColors.redFF3B3B)
                      : Icon(Icons.arrow_drop_up, color: AppColors.color06D54E),
                  MdSnsText(
                    change.isNotEmpty
                        ? Filters.systemNumberConvention(
                                change,
                                isPrice: false,
                                isAbs: false,
                              ).replaceAll('%', '') +
                              "%"
                        : "0.0%",
                    color: change.contains("-")
                        ? AppColors.redFF3B3B
                        : AppColors.color06D54E,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ],
              ),
              SizedBox(
                width: 85,
                height: 15,
                child: Sparkline(
                  data:
                      ref.watch(stocksStreamProvider) != null &&
                          ref.watch(stocksStreamProvider) == widget.stocks
                      ? ref
                                    .watch(stocksStreamProvider)
                                    .fiveDayTrend
                                    .isNotEmpty &&
                                ref
                                        .watch(stocksStreamProvider)
                                        .fiveDayTrend[0]
                                        .data !=
                                    null
                            ? ref
                                  .watch(stocksStreamProvider)
                                  .fiveDayTrend[0]
                                  .data!
                            : widget.stocks.fiveDayTrend.isNotEmpty &&
                                  widget.stocks.fiveDayTrend[0].data != null
                            ? widget.stocks.fiveDayTrend[0].data!
                            : [0, 0, 0, 0, 0]
                      : widget.stocks.fiveDayTrend.isNotEmpty &&
                            widget.stocks.fiveDayTrend[0].data != null
                      ? widget.stocks.fiveDayTrend[0].data!
                      : [0, 0, 0, 0, 0],

                  lineWidth: 2.0,
                  lineColor: change.contains("-")
                      ? AppColors.redFF3B3B
                      : AppColors.color06D54E,
                  pointsMode: PointsMode.none,
                  pointColor: Colors.white,
                  useCubicSmoothing: false,
                  sharpCorners: true,
                  fillMode: FillMode.below,
                  fillGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: change.contains("-")
                        ? [
                            AppColors.redFF3B3B.withOpacity(0.5),
                            AppColors.redFF3B3B.withOpacity(0.2),
                          ]
                        : [
                            AppColors.color06D54E.withOpacity(0.5),
                            AppColors.color06D54E.withOpacity(0.2),
                          ],
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
