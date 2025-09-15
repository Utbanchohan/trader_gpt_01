import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<String> icons = [
    'assets/images/apple.png',
    'assets/images/google.png',
    'assets/images/meta.png',
    'assets/images/tesla.png',
    'assets/images/hp.png',
    'assets/images/microsoft.png',
    'assets/images/jnj.png',
    'assets/images/visa.png',
  ];

  Timer? _timer;
  double _scrollPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 60), (timer) {
      if (_scrollController.hasClients) {
        _scrollPosition += 2;
        if (_scrollPosition > _scrollController.position.maxScrollExtent) {
          _scrollPosition = 0;
        }
        _scrollController.animateTo(
          _scrollPosition,
          duration: const Duration(milliseconds: 60),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071020),
      body: SafeArea(
        child: Column(
          children: [
            /// Logo Section
            Column(
              children: [
                Image.asset(
                  Assets.images.manicon.path,
                  height: 60.h,
                  width: 0.65.sw,
                ),
                SizedBox(height: 20.h),
                Image.asset(
                  Assets.images.cerosil.path,
                  height: 280.h,
                  width: 1.sw,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child: MdSnsText(
                    "Unlock your trading\npotential with AI insights",
                    textAlign: TextAlign.center,
                    height: 1.3,
                    size: 32, // 👈 responsive text
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  child: MdSnsText(
                    maxLines: 2,
                    "Experience real-time market insights, advanced analytics, and intelligent trade signals",
                    textAlign: TextAlign.center,
                    color: AppColors.white,
                    letterSpacing: 0.2, // 👈 responsive letter spacing
                    height: 1.4,
                    size: 16, // 👈 responsive text
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            /// Buttons Section
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  // Create Account Button
                  SizedBox(
                    height: 50.h,
                    width: 1.sw,
                    child: ButtonWidget(
                      onPressed: () {
                        context.goNamed(AppRoutes.signUpPage.name);
                      },
                      title: 'Create account',
                      borderRadius: 50.r,
                      fontSize: 14, // 👈 responsive text
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.white,
                      bgColor: AppColors.color0098E4,
                    ),
                  ),
                  SizedBox(height: 20.h),

                  // Sign In Button
                  SizedBox(
                    height: 50.h,
                    width: 1.sw,
                    child: ButtonWidget(
                      onPressed: () {
                        context.goNamed(AppRoutes.signInPage.name);
                      },
                      title: 'Sign in',
                      borderRadius: 50.r,
                      fontSize: 14, // 👈 responsive text
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.color274E87,
                      borderColor: AppColors.color203864,
                      bgColor: AppColors.color091224,
                    ),
                  ),
                  SizedBox(height: 20.h),

                  // Terms
                  MdSnsText(
                    "By Signing Up you agree to our Terms & Privacy Policy.",
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: AppColors.white.withOpacity(0.8),
                    size: 11, // 👈 responsive text
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Company Icon Widget
Widget buildCompanyIcon(String imagePath) {
  return Container(
    width: 0.18.sw,
    height: 90.h,
    decoration: BoxDecoration(
      color: const Color(0xFF141C2F),
      borderRadius: BorderRadius.circular(16.r),
    ),
    child: Center(
      child: Image.asset(imagePath, height: 50.h, fit: BoxFit.contain),
    ),
  );
}
