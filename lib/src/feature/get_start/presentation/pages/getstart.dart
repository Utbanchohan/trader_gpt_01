import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/started_page_gride_scroll.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

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
          duration: Duration(milliseconds: 60),
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
      bottomNavigationBar: Container(
        height: 180.h,
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
                fontSize: 14,
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
      backgroundColor: AppColors.primaryColor,
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
                SizedBox(height: 40.h),
                Transform.rotate(angle: 0.04, child: StartedPageGrideScroll()),

                SizedBox(height: 80.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child: MdSnsText(
                    "Unlock your trading\npotential with AI insights",
                    textAlign: TextAlign.center,
                    height: 1.3,
                    size: 32,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child: MdSnsText(
                    maxLines: 2,
                    "Experience real-time market insights, advanced analytics, and intelligent trade signals",
                    textAlign: TextAlign.center,
                    color: AppColors.white,
                    letterSpacing: 0.2,
                    height: 1.4,
                    size: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            /// Buttons Section
          ],
        ),
      ),
    );
  }
}
