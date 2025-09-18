import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class OnboardingBottomSheet extends StatefulWidget {
  const OnboardingBottomSheet({super.key});

  @override
  State<OnboardingBottomSheet> createState() => _OnboardingBottomSheetState();
}

class _OnboardingBottomSheetState extends State<OnboardingBottomSheet> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    // auto page sliding start
    Future.delayed(const Duration(seconds: 3), _nextPage);
  }

  void _nextPage() {
    if (!mounted) return;

    if (_currentPage < 1) {
      _currentPage++;
    } else {
      _currentPage = 0; // 👈 wapas first page par aayega
    }

    _pageController.animateToPage(
      _currentPage,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );

    // 3 sec baad phir se call
    Future.delayed(const Duration(seconds: 3), _nextPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildPage({
    required String mainImage,
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          // decoration: BoxDecoration(color: AppColors.primaryColor),
          child: Image.asset(mainImage, ),
        ),
        SizedBox(height: 20.h),

        Image.asset(
          imagePath,
          width: 60.w,
          height: 60.h,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 24.h),
    
        MdSnsText(
          title,
          size: 20,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
    
        SizedBox(height: 10.h),
    
        // 👇 Subtitle text
        MdSnsText(
          subtitle,
          textAlign: TextAlign.center,
          size: 16,
          color: AppColors.colorB2B2B7,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: AppColors.shadowColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildPage(
                  imagePath: Assets.images.leftscrollicon.path,
                  title: "Swipe Left to view Analytics",
                  subtitle:
                      "See how Charts adapt to queries.Identify trends \nwith AI patterns.",
                  mainImage: Assets.images.leftsideimage.path,
                ),
                _buildPage(
                  mainImage: Assets.images.rightsideimage.path,
      
                  imagePath: Assets.images.rightscrollicon.path,
                  title: "Swipe Right to view Conversation List",
                  subtitle:
                      "Explore the list of previous conversations to \n continue and find more information.",
                ),
              ],
            ),
          ),
      
          Padding(
            padding: EdgeInsets.only(bottom: 24.h),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.color0098E4,
                padding: EdgeInsets.symmetric(
                  horizontal: 130.w,
                  vertical: 14.h,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: MdSnsText(
                "Continue",
                size: 16.sp,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
