import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/extensions/symbol_image.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ConversationChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  ChatRouting? chatRouting;

  ConversationChatAppBar({
    super.key,
    required this.chatRouting,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    if (chatRouting == null || chatRouting!.companyName.isEmpty) {
      /// Default AppBar (Logo wala)
      return AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset(
                Assets.images.menu.path,
                width: 40,
                height: 40,
              ),
            );
          },
        ),
        title: Image.asset(
          Assets.images.logo.path,
          width: 187,
          height: 35.27,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Image.asset(
              Assets.images.searchNormal.path,
              width: 20,
              height: 20,
            ),
          ),
        ],
      );
    } else {
      /// Stock Detail AppBar
      return AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        titleSpacing: 0,
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset(
                Assets.images.menu.path,
                width: 40,
                height: 40,
              ),
            );
          },
        ),
        title: Row(
          children: [
            SizedBox(
              width: 35,
              height: 35,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SvgPicture.network(
                  getItemImage(
                    ImageType.stock,
                    chatRouting!.symbol,
                  ),
                  fit: BoxFit.cover,
                  placeholderBuilder: (context) =>
                      SizedBox(width: 35, height: 35),
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
                      "#${chatRouting!.symbol}",
                      fontWeight: TextFontWeightVariant.h7,
                      variant: TextVariant.h2,
                      color: AppColors.white,
                    ),
                    SizedBox(width: 4),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 3,
                      child: MdSnsText(
                        " ${chatRouting!.companyName!.split("-").first.trim()}",
                        color: AppColors.colorB2B2B7,
                        fontWeight: TextFontWeightVariant.h4,
                        variant: TextVariant.h4,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.white,
                      size: 20.sp,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$${chatRouting!.price}",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(width: 6),
                    Icon(
                      chatRouting!.changePercentage.toString().contains("-")
                          ? Icons.arrow_drop_down
                          : Icons.arrow_drop_up,
                      color: chatRouting!.changePercentage
                              .toString()
                              .contains("-")
                          ? AppColors.redFF3B3B
                          : AppColors.color06D54E,
                      size: 20,
                    ),
                    MdSnsText(
                      " ${chatRouting!.changePercentage.toStringAsFixed(2).replaceAll("-", "")}%",
                      color: chatRouting!.changePercentage
                              .toString()
                              .contains("-")
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
              context.pushNamed(
                AppRoutes.analytics.name,
                extra: chatRouting,
              );
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
