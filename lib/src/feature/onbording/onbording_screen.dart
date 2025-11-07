import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  Timer? _autoScrollTimer;

  final List<Map<String, String>> pages = [
    {
      "title": "Meet Your AI Trading\nCompanion",
      "subtitle":
          "Your AI-powered trading companion for quick market insights and confident decisions.",
      "image": Assets.images.onboarding1.path,
    },
    {
      "title": "Understand\nthe Market Instantly",
      "subtitle":
          "TradersGPT turns complex market data into clear insights for smarter trading decisions.",
      "image": Assets.images.onboard2.path,
    },
    {
      "title": "Make Confident\nDecisions",
      "subtitle":
          "TradersGPT transforms complex data into clear, instant strategies for confident trading.",
      "image": Assets.images.bording3.path,
    },
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_pageController.hasClients) {
        int nextPage = currentPage + 1;
        if (nextPage >= pages.length) {
          nextPage = 0;
        }
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 15.h),
        child: TextButton(
          onPressed: () {
            context.goNamed(AppRoutes.signUpPage.name);
          },
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: AppColors.white,
                fontSize: 12.h,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(text: "Don't have an account, "),
                TextSpan(
                  text: "Signup Here",
                  style: TextStyle(
                    fontSize: 12.h,
                    color: AppColors.color0098E4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: pages.length,
                onPageChanged: (index) => setState(() => currentPage = index),
                itemBuilder: (context, index) {
                  final page = pages[index];

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// 🔹 Stack only for the upper portion (background + logo + image)
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          /// 🩵 Background image (only behind top section)
                          Positioned.fill(
                            child: Image.asset(
                              Assets.images.bg.path,
                              fit: BoxFit.cover,
                            ),
                          ),

                          /// 🩶 Foreground content
                          Column(
                            children: [
                              SizedBox(height: 30.h),
                              Image.asset(
                                Assets.images.appLogo.path,
                                height: 45.h,
                                width: 153.w,
                              ),

                              SizedBox(height: 15.h),

                              /// Page Indicators
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  pages.length,
                                  (i) => AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 2.w,
                                    ),
                                    height: 3.h,
                                    width: 18.w,
                                    decoration: BoxDecoration(
                                      color: currentPage == i
                                          ? AppColors.white
                                          : AppColors.color5E646E,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10.h),

                              /// Page-specific Image
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Image.asset(
                                  page["image"]!,
                                  height: 293.h,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 15.w, right: 15.w),
                        child: Column(
                          children: [
                            SizedBox(height: 10.h),

                            MdSnsText(
                              page["title"]!,
                              // height: 1.4,
                              variant: TextVariant.h9,
                              fontWeight: TextFontWeightVariant.h1,
                              textAlign: TextAlign.center,
                              color: AppColors.white,
                            ),

                            SizedBox(height: 10.h),
                            Container(
                              margin: EdgeInsets.only(left: 20.w, right: 20.w),

                              child: MdSnsText(
                                page["subtitle"]!,
                                textAlign: TextAlign.center,
                                variant: TextVariant.h10,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors.white,
                              ),
                            ),

                            SizedBox(height: 10.h),

                            SizedBox(
                              height: 40.h,
                              child: ButtonWidget(
                                onPressed: () {
                                  context.goNamed(AppRoutes.loginPage.name);
                                },
                                title: 'Sign in',
                                borderRadius: 50.r,
                                fontSize: 18.w,
                                fontWeight: FontWeight.w600,
                                textColor: AppColors.white,
                                bgColor: AppColors.color0098E4,
                              ),
                            ),
                            SizedBox(height: 15.h),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
