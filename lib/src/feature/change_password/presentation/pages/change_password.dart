import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/change_password/presentation/provider/change_password_provider.dart';
import 'package:trader_gpt/src/feature/sign_in/presentation/provider/sign_in.dart';
import 'package:trader_gpt/src/shared/custom_message.dart';
import 'package:trader_gpt/src/shared/mixin/form_state_mixin.dart';
import 'package:trader_gpt/src/shared/states/app_loading_state.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ChangePassword extends ConsumerStatefulWidget {
  const ChangePassword({super.key});

  @override
  ConsumerState<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends ConsumerState<ChangePassword>
    with FormStateMixin {
  bool visible = false;
  bool isible = false;
  bool isOldVisble = false;

  TextEditingController oldPassword = TextEditingController();
  TextEditingController createpassword = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  FutureOr<void> onSubmit() async {
    if (createpassword.value.text == confirmpassword.value.text) {
      final result = await ref
          .read(changePasswordProviderProvider.notifier)
          .changePassword(
            oldPassword: oldPassword.value.text,
            newPassword: createpassword.value.text,
          );
      if (result != null) {
        if (mounted) {
          context.pushNamed(AppRoutes.signInPage.name);
        }
      }
    } else {
      $showMessage("Confirm Password should be same as create Password ");
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(changePasswordProviderProvider) == AppLoadingState.loading();

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 19, right: 19, bottom: 34),
        child: SizedBox(
          height: 50.h,
          child: ButtonWidget(
            onPressed: () {
              submitter();
            },
            isLoading: isLoading,
            title: 'Continue',
            borderRadius: 50.r,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            textColor: AppColors.white,
            bgColor: AppColors.color0098E4,
          ),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: Colors.transparent,
            leading: SizedBox(
              height: 19.h,
              width: 23.w,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  Assets.images.arrowBack.path,
                  height: 19.h,
                  width: 23.w,
                ),
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),

                Image.asset(
                  Assets.images.appLogo.path,
                  height: 41.h,
                  width: 166.w,
                ),
                SizedBox(height: 30.h),

                MdSnsText(
                  "Change your password",
                  color: AppColors.white,
                  variant: TextVariant.h6,
                  fontWeight: TextFontWeightVariant.h1,
                ),

                SizedBox(height: 12.h),

                MdSnsText(
                  " Don’t worry, this happens.",
                  color: AppColors.white,
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h4,
                ),
                SizedBox(height: 30.h),
                // Google button

                // Divider
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            Assets.images.lock.path,
                            height: 15.h,
                            width: 15.w,
                          ),
                          SizedBox(width: 5.w),
                          MdSnsText(
                            "Old Password",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,

                            color: AppColors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 9.h),

                      // Email field
                      TextFormField(
                        obscureText: !isOldVisble,
                        controller: oldPassword,
                        style: TextStyle(
                          color: Colors.white,

                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              isOldVisble
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.white70,
                            ),
                            onPressed: () => setState(() {
                              isOldVisble = !isOldVisble;
                            }),
                          ),
                          filled: true,
                          fillColor: AppColors.bubbleColor,
                          hintText: 'Enter Old Password',
                          hintStyle: GoogleFonts.plusJakartaSans(
                            color: AppColors.white,
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

                      // Create label
                      Row(
                        children: [
                          Image.asset(
                            Assets.images.lock.path,
                            height: 15.h,
                            width: 15.w,
                          ),
                          SizedBox(width: 5.w),
                          MdSnsText(
                            "Create a password",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,

                            color: AppColors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 9.h),

                      // Email field
                      TextFormField(
                        obscureText: !visible,
                        controller: createpassword,
                        style: TextStyle(
                          color: Colors.white,

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
                          hintText: 'Create a password',
                          hintStyle: GoogleFonts.plusJakartaSans(
                            color: AppColors.white,
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
                            "Confirm a password",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,

                            color: AppColors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 9.h),

                      // Password field
                      TextFormField(
                        obscureText: !isible,
                        controller: confirmpassword,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              isible ? Icons.visibility : Icons.visibility_off,
                              color: Colors.white70,
                            ),
                            onPressed: () => setState(() {
                              isible = !isible;
                            }),
                          ),
                          filled: true,
                          fillColor: AppColors.bubbleColor,
                          hintText: 'Confirm a password',
                          hintStyle: TextStyle(
                            color: Colors.white,
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
                SizedBox(height: 12.h),

                Container(
                  width: 342,
                  child: MdSnsText(
                    letterSpacing: 0,
                    "Minimum 8 characters, with at least 1 uppercase, 1 lowercase, and 1 number (0-9) required.",
                    color: AppColors.white,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
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
