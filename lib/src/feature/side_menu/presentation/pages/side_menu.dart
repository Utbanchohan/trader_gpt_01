import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/shared/widgets/confirmation_widget.dart';
import 'package:trader_gpt/src/shared/widgets/logout_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class SideMenu extends ConsumerStatefulWidget {
  const SideMenu({super.key});

  @override
  ConsumerState<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends ConsumerState<SideMenu> {
  String selectedMenu = AppRoutes.chatPage.name;
  User? userModel;

  logout() {
    String token = "";
    ref.read(localDataProvider).setAccessToken(token);
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

  void showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return ConfirmationDialog(
          onConfirm: () {
            Navigator.pop(context); // Close dialog
            // Perform confirm action here
            print("Confirmed!");
          },
          onCancel: () {
            Navigator.pop(context); // Close dialog
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
                  SizedBox(height: 20.h),

                  // Free Trial card
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
                              fontWeight: FontWeight.w400,
                              size: 16,
                            ),
                            MdSnsText(
                              "6 days left",
                              color: AppColors.color9EAAC0,
                              fontWeight: FontWeight.w400,
                              size: 16,
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
                ],
              ),

              SizedBox(height: 20.h),

              // Menu Items
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
                      AppRoutes.conversationStart.name,
                    ),
                    _buildMenuItem(
                      context,
                      Assets.images.book.path,
                      "Books",
                      "",
                    ),

               
                    _buildMenuItem(
                      context,
                      Assets.images.statusUp.path,
                      "Analytics",
                      "",
                    ),
                    _buildMenuItem(
                      context,
                      Assets.images.setting2.path,

                      "Settings",
                      AppRoutes.swipeScreen.name,
                    ),
                  ],
                ),
              ),

              // Bottom User Profile
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
                          : AssetImage(Assets.images.profile.path),
                    ),
                    SizedBox(width: 14.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MdSnsText(
                            userModel != null && userModel!.name.isNotEmpty
                                ? userModel!.name
                                : "N/A",
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                            size: 14,
                          ),
                          MdSnsText(
                            "Free Plan",

                            color: Colors.lightBlueAccent,
                            size: 12.sp,
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
    String? routeName,
  ) {
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
        size: 16,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
      onTap: routeName == null || routeName.isEmpty
          ? null
          : () {
              setState(() {
                selectedMenu = routeName;
              });
              // context.pop();
              context.pushNamed(routeName);
            },
    );
  }
}
