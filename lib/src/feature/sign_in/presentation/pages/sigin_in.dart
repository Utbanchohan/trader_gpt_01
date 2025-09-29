import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/sign_in/presentation/provider/sign_in.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../shared/mixin/form_state_mixin.dart';
import '../../../../shared/states/app_loading_state.dart';

class SiginIn extends ConsumerStatefulWidget {
  const SiginIn({super.key});

  @override
  ConsumerState<SiginIn> createState() => _SiginInState();
}

class _SiginInState extends ConsumerState<SiginIn> with FormStateMixin {
  bool visible = false;

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  FutureOr<void> onSubmit() async {
    final result = await ref
        .read(loginProvider.notifier)
        .onSubmit(email: email.value.text, password: password.value.text);
    if (result != null) {
      if (mounted) {
        context.goNamed(AppRoutes.swipeScreen.name, extra: {"initialIndex": 0});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(loginProvider) == AppLoadingState.loading();

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MdSnsText(
                  "Sign in to",
                  variant: TextVariant.h6,
                  fontWeight: TextFontWeightVariant.h1,

                  color: AppColors.white,
                ),
                // SizedBox(height: 5.h),
                Image.asset(
                  Assets.images.appLogo.path,
                  width: 203.w,
                  height: 50.h,
                ),

                SizedBox(height: 20.h),
                MdSnsText(
                  "Ready to start where you left of?",
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h4,

                  color: AppColors.white,
                ),
                SizedBox(height: 40.h),

                // Google button

                // Divider
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      // Email label
                      Row(
                        children: [
                          Image.asset(
                            Assets.images.sms.path,
                            height: 15.h,
                            width: 15.w,
                          ),
                          SizedBox(width: 5.w),
                          MdSnsText(
                            "Email Address",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,

                            color: AppColors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 9.h),

                      // Email field
                      TextFormField(
                        controller: email,
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.bubbleColor,
                          hintText: 'Email',
                          hintStyle: GoogleFonts.plusJakartaSans(
                            color: AppColors.lightTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),

                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 24.w,
                            vertical: 10.h,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),

                      SizedBox(height: 16.h),

                      // Password label
                      Row(
                        children: [
                          Image.asset(
                            Assets.images.lock.path,
                            height: 15.h,
                            width: 15.w,
                          ),
                          SizedBox(width: 5.w),
                          MdSnsText(
                            "Password",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,

                            color: AppColors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 9.h),

                      // Password field
                      TextFormField(
                        obscureText: !visible,
                        controller: password,
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              visible ? Icons.visibility : Icons.visibility_off,
                              color: Colors.white70,
                            ),
                            onPressed: () => setState(() {
                              visible = !visible;
                            }),
                          ),
                          filled: true,
                          fillColor: AppColors.bubbleColor,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.plusJakartaSans(
                            color: AppColors.lightTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 24.w,
                            vertical: 10.h,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10.h),

                // Forgot password
                Container(
                  alignment: Alignment.centerRight,
                  child: MdSnsText(
                    "Forgot password?",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),

                SizedBox(height: 35.h),

                // Sign in button
                SizedBox(
                  height: 50.h,
                  child: ButtonWidget(
                    onPressed: () {
                      submitter();
                    },
                    isLoading: isLoading,
                    title: 'Sign in',
                    borderRadius: 50.r,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    textColor: AppColors.white,
                    bgColor: AppColors.color0098E4,
                  ),
                ),

                SizedBox(height: 35.h),

                Row(
                  children: [
                    Expanded(child: Divider(color: AppColors.colorB2B2B7)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: MdSnsText(
                        "Or",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.white,
                      ),
                    ),
                    Expanded(child: Divider(color: AppColors.colorB2B2B7)),
                  ],
                ),

                SizedBox(height: 35.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 162.w,
                      height: 55.h,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.color274E87),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              Assets.images.google.path,
                              height: 24.h,
                              width: 24.w,
                            ),
                            SizedBox(width: 10.w),
                            MdSnsText(
                              "Google",
                              variant: TextVariant.h1,
                              fontWeight: TextFontWeightVariant.h2,

                              color: AppColors.color274E87,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 162.w,
                      height: 55.h,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.color274E87),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              Assets.images.apple.path,
                              height: 24.h,
                              width: 24.w,
                            ),
                            SizedBox(width: 10.w),
                            MdSnsText(
                              "Apple",

                              variant: TextVariant.h1,
                              fontWeight: TextFontWeightVariant.h2,

                              color: AppColors.color274E87,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Apple button
                SizedBox(height: 35.h),

                // Sign up text
                Center(
                  child: TextButton(
                    onPressed: () {
                      context.goNamed(AppRoutes.signUpPage.name);
                    },
                    child: MdSnsText(
                      "Don’t have an account? Sign up",
                      color: AppColors.white,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
