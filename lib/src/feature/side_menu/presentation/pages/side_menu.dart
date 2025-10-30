import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/shared/widgets/logout_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../shared/socket/providers/stocks_price.dart';

class SideMenu extends ConsumerStatefulWidget {
  const SideMenu({super.key});

  @override
  ConsumerState<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends ConsumerState<SideMenu> {
  String? selectedMenu;
  User? userModel;

  logout() {
    String password = ref.read(localDataProvider).getPassword1 ?? "";
    String email = ref.read(localDataProvider).getEmail ?? "";
    String remamberMe = ref.read(localDataProvider).getRemamberMe ?? "";
    ref.read(localDataProvider).clearAllData();
    ref.read(localDataProvider).setEmail(email);
    ref.read(localDataProvider).setPassword(password);
    ref.read(localDataProvider).setRememberMe(remamberMe);
    ref.read(stocksManagerProvider.notifier).unWatchAllStock();
    context.goNamed(AppRoutes.signInPage.name);
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return LogoutDialog(
          onConfirm: () {
            logout();
          },
          onCancel: () {
            Navigator.pop(context);
          },
        );
      },
    );
  }

  getUser() async {
    dynamic userData = await ref.watch(localDataProvider).getUser();
    if (userData != null) {
      setState(() {
        userModel = User.fromJson(userData);
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 👇 yahan se current route name milega
    final routeName = GoRouterState.of(context).name;

    setState(() {
      selectedMenu = routeName ?? AppRoutes.chatPage.name;
    });
  }

  @override
  Widget build(BuildContext context) {
    getUser();

    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.images.appLogo.path,
                    height: 41.h,
                    width: 166.w,
                  ),
                ],
              ),
              SizedBox(height: 36.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Assets.images.plusbox.path,
                        height: 22.h,
                        width: 21.w,
                      ),
                      SizedBox(width: 11.w),
                      MdSnsText(
                        "Start New Chat",
                        color: AppColors.color0xFF40C4FF,
                        variant: TextVariant.h2,
                        fontWeight: TextFontWeightVariant.h4,
                      ),
                    ],
                  ),

                  Image.asset(
                    Assets.images.arrow.path,
                    height: 21.h,
                    width: 22.w,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _buildMenuItem(
                      context,
                      Assets.images.message.path,
                      "General",
                      AppRoutes.chatPage.name,
                    ),
                    _buildMenuItem(
                      context,
                      Assets.images.conversation.path,
                      "Conversation",
                      AppRoutes.swipeScreen.name,
                      extra: {"chatRouting": null, "initialIndex": 0},
                    ),

                    // _buildMenuItem(
                    //   context,
                    //   Assets.images.book.path,
                    //   "Books",
                    //   "",
                    // ),
                    // _buildMenuItem(
                    //   context,
                    //   Assets.images.statusUp.path,
                    //   "Analytics",
                    //   "",
                    // ),
                    _buildMenuItem(
                      context,
                      Assets.images.setting2.path,
                      "Settings",
                      AppRoutes.myProfileScreen.name,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.color1B254B,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MdSnsText(
                          "Free Trial",
                          color: AppColors.white,
                          variant: TextVariant.h2,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        MdSnsText(
                          "6 days left",
                          color: AppColors.color9EAAC0,
                          variant: TextVariant.h2,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: LinearProgressIndicator(
                        value: 0.6,
                        minHeight: 6.h,
                        backgroundColor: AppColors.primaryColor,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColors.color06D54E,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoutes.myProfileScreen.name);
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundImage:
                          userModel != null && userModel!.imgUrl.isNotEmpty
                          ? NetworkImage(userModel!.imgUrl)
                          : AssetImage(Assets.images.placeholderimage.path)
                                as ImageProvider,
                    ),
                    SizedBox(width: 14.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MdSnsText(
                            userModel != null && userModel!.name.isNotEmpty
                                ? userModel!.name.capitalize()
                                : "N/A",
                            color: AppColors.white,
                            variant: TextVariant.h3,
                            fontWeight: TextFontWeightVariant.h2,
                          ),
                          MdSnsText(
                            "Free Plan",
                            color: Colors.lightBlueAccent,
                            variant: TextVariant.h4,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showLogoutDialog(context);
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.lightBlueAccent,
                        size: 20.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context,
    String icon,
    String title,
    String? routeName, {
    Map<String, dynamic>? extra,
  }) {
    final bool isSelected = selectedMenu == routeName;

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        icon,
        color: isSelected ? AppColors.white : AppColors.color5E646E,
        height: 24.h,
        width: 24.w,
      ),
      title: MdSnsText(
        title,
        color: isSelected ? AppColors.white : AppColors.color5E646E,
        variant: TextVariant.h2,
        fontWeight: isSelected
            ? TextFontWeightVariant.h1
            : TextFontWeightVariant.h4,
      ),
      onTap: routeName == null || routeName.isEmpty
          ? null
          : () {
              setState(() {
                selectedMenu = routeName; // 👈 update selected
              });
              context.pop();
              context.pushNamed(routeName, extra: extra);
            },
    );
  }
}
