import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      centerTitle: true,
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
      leading: Builder(
        builder: (context) {
          return InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(Assets.images.menu.path, width: 40, height: 40),
          );
        },
      ),
      title: Image.asset(
        Assets.images.appLogo.path,
        width: 143.w,
        height: 35.h,
      ),
      actions: [
        // Container(
        //   margin: EdgeInsets.only(right: 20),
        //   child: Image.asset(
        //     Assets.images.searchNormal.path,
        //     width: 20,
        //     height: 20,
        //   ),
        // ),
      ],
    );
  }
}
