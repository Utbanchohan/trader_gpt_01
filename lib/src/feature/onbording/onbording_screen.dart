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

  final List<Map<String, String>> pages = [
    {
      "title": "Meet Your AI Trading Companion",
      "subtitle":
          "Your AI-powered trading companion for quick market insights and confident decisions.",
      "image": Assets.images.onboard.path,
    },
    {
      "title": "Understand the Market Instantly",
      "subtitle":
          "TradersGPT turns complex market data into clear insights for smarter trading decisions.",
      "image": Assets.images.onboard.path,
    },
    {
      "title": "Make Confident Decisions",
      "subtitle":
          "TradersGPT transforms complex data into clear, instant strategies for confident trading.",
      "image": Assets.images.onboard.path,
    },
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
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
                      Image.asset(
                        Assets.images.appLogo.path,
                        height: 50.h,
                        width: 203.w,
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          pages.length,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.symmetric(horizontal: 2.w),
                            height: 4.h,
                            width: 24.w, // ✅ same width for all indicators
                            decoration: BoxDecoration(
                              color: currentPage == index
                                  ? AppColors
                                        .white // selected color
                                  : AppColors.color5E646E, // unselected color
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Image.asset(
                        page["image"]!,
                        height: 250.h,
                        fit: BoxFit.cover,
                      ),

                      SizedBox(height: 20), // SizedBox(height: 40.h),
                      MdSnsText(
                        page["title"]!,
                        variant: TextVariant.h6,
                        fontWeight: TextFontWeightVariant.h1,
                        textAlign: TextAlign.center,

                        color: AppColors.white,
                      ),

                      SizedBox(height: 15),
                      MdSnsText(
                        page["subtitle"]!,
                        textAlign: TextAlign.center,
                        variant: TextVariant.h2,
                        fontWeight: TextFontWeightVariant.h4,

                        color: AppColors.white,
                      ),
                    ],
                  );
                },
              ),
            ),

            /// Page Indicator

            /// Button Section
            // if (currentPage == pages.length - 1)
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                    child: ButtonWidget(
                      onPressed: () {
                        context.goNamed(AppRoutes.signInPage.name);
                      },
                      // isLoading: isLoading,
                      title: 'Sign in',
                      borderRadius: 50.r,
                      fontSize: 18.w,
                      fontWeight: FontWeight.w600,
                      textColor: AppColors.white,
                      bgColor: AppColors.color0098E4,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        context.goNamed(AppRoutes.signUpPage.name);
                      },
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(text: "Don't have an account, "),
                            TextSpan(
                              text: "Signup Here",
                              style: TextStyle(
                                color: AppColors.color0098E4,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),

            // else
            //   TextButton(
            //     onPressed: () {
            //       _pageController.nextPage(
            //         duration: const Duration(milliseconds: 300),
            //         curve: Curves.easeInOut,
            //       );
            //     },
            //     child: const Text(
            //       "Next →",
            //       style: TextStyle(color: Colors.blueAccent),
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
