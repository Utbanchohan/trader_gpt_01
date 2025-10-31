import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/extensions/symbol_image.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../../core/extensions/price_calculation.dart';
import '../../../../../shared/extensions/number_formatter_extension.dart';
import '../../../../../shared/socket/providers/stocks_price.dart';

// ignore: must_be_immutable
class ConversationChatAppBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  ChatRouting? chatRouting;
  final void Function() onPressed;

  ConversationChatAppBar({
    super.key,
    required this.chatRouting,
    required this.onPressed,
  });

  @override
  ConsumerState<ConversationChatAppBar> createState() =>
      _ConversationChatAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  // TODO: implement preferredSize
}

class _ConversationChatAppBarState
    extends ConsumerState<ConversationChatAppBar> {
  final compactFormatter = NumberFormat.compactCurrency(
    locale: "en",
    symbol: "\$",
    decimalDigits: 2,
  );
  @override
  Widget build(BuildContext context) {
    final stockManagerState = ref.watch(stocksManagerProvider);

    final liveStock = stockManagerState[widget.chatRouting?.stockid ?? ''];
    double change =
        PriceUtils.getChangesPercentage(
              liveStock != null ? liveStock.price : widget.chatRouting!.price,
              widget.chatRouting!.previousClose,
            ) !=
            null
        ? PriceUtils.getChangesPercentage(
            liveStock != null ? liveStock.price : widget.chatRouting!.price,
            widget.chatRouting!.previousClose,
          )!
        : widget.chatRouting!.changePercentage;

    if (widget.chatRouting == null || widget.chatRouting!.companyName.isEmpty) {
      return AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,

        title: Image.asset(Assets.images.logo.path, width: 187, height: 35.27),
        // actions: [
        //   Container(
        //     margin: EdgeInsets.only(right: 20),
        //     child: Image.asset(
        //       Assets.images.searchNormal.path,
        //       width: 20,
        //       height: 20,
        //     ),
        //   ),
        // ],
      );
    } else {
      return AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        titleSpacing: 15,
        automaticallyImplyLeading: false,

        title: Row(
          // mainAxisSize: MainAxisSize.,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                context.pushNamed(
                  AppRoutes.swipeScreen.name,
                  extra: {"chatRouting": widget.chatRouting, "initialIndex": 2},
                );
              },
              child: SizedBox(
                width: 35,
                height: 35,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: widget.chatRouting!.type.toLowerCase() == "crypto"
                      ? Image.network(
                          getItemImage(
                            ImageType.crypto,
                            widget.chatRouting!.symbol,
                          ),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return SvgPicture.network(
                              "https://cdn-images.traderverse.io/crypto_dummy.svg",
                              fit: BoxFit.cover,
                            );
                          },
                        )
                      : SvgPicture.network(
                          getItemImage(
                            ImageType.stock,
                            widget.chatRouting!.symbol,
                          ),
                          fit: BoxFit.cover,
                          placeholderBuilder: (context) => SizedBox(
                            width: 35,
                            height: 35,
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
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    MdSnsText(
                      "#${widget.chatRouting!.symbol}",
                      fontWeight: TextFontWeightVariant.h7,
                      variant: TextVariant.h2,
                      color: AppColors.white,
                    ),
                    SizedBox(width: 4),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 5,
                      child: MdSnsText(
                        " ${widget.chatRouting!.companyName!.split("-").first.trim()}",
                        color: AppColors.colorB2B2B7,
                        fontWeight: TextFontWeightVariant.h4,
                        variant: TextVariant.h4,
                      ),
                    ),
                    // Icon(
                    //   Icons.keyboard_arrow_down,
                    //   color: AppColors.white,
                    //   size: 20.sp,
                    // ),
                  ],
                ),
                Row(
                  children: [
                    MdSnsText(
                      liveStock != null
                          ? Filters.systemNumberConvention(
                              liveStock.price,
                              isPrice: true,
                              isAbs: false,
                            )
                          : Filters.systemNumberConvention(
                              widget.chatRouting!.price,
                              isPrice: true,
                              isAbs: false,
                            ),
                      variant: TextVariant.h3,
                      color: AppColors.white,
                    ),
                    SizedBox(width: 6),
                    Icon(
                      change < 0 ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: change < 0
                          ? AppColors.redFF3B3B
                          : AppColors.color06D54E,
                      size: 20,
                    ),
                    MdSnsText(
                      " ${change.toStringAsFixed(2).replaceAll("-", "")}%",
                      color: change < 0
                          ? AppColors.redFF3B3B
                          : AppColors.color06D54E,
                      fontWeight: TextFontWeightVariant.h4,
                      variant: TextVariant.h4,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              widget.onPressed();
            },
            child: Container(
              width: 40.w,
              height: 71.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.images.shapeAngle.path),
                ),
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                Assets.images.analytics.path,
                width: 25.w,
                height: 21.h,
              ),
            ),
          ),
        ],
      );
    }
  }
}
