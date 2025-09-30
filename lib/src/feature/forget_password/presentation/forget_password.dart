import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/forget_password/presentation/provider/forgot_password_provider.dart';
import 'package:trader_gpt/src/feature/sigin_up/presentation/provider/sign_up.dart';
import 'package:trader_gpt/src/feature/update_password/presentation/update_password.dart';
import 'package:trader_gpt/src/shared/mixin/form_state_mixin.dart';
import 'package:trader_gpt/src/shared/states/app_loading_state.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ForgetPassword extends ConsumerStatefulWidget {
  const ForgetPassword({super.key});

  @override
  ConsumerState<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends ConsumerState<ForgetPassword>
    with FormStateMixin {
  final TextEditingController emailAddress = TextEditingController();

  @override
  FutureOr<void> onSubmit() async {
    final result = await ref
        .read(forgotPasswordProviderProvider.notifier)
        .forgot(email: emailAddress.value.text);
    if (result != null && result == true) {
      if (mounted) {
        context.pushNamed(
          AppRoutes.verifaction.name,
          queryParameters: {
            'email': emailAddress.value.text,
            'isFromSignup': 'false',
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(forgotPasswordProviderProvider) == AppLoadingState.loading();
    return Scaffold(
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

      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),

            Image.asset(Assets.images.appLogo.path, height: 41.h, width: 166.w),
            SizedBox(height: 30.h),

            MdSnsText(
              "Forgot Password?",
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

            // Email Field Label
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(Assets.images.sms.path, height: 15.h, width: 15.w),
                SizedBox(width: 5.w),
                MdSnsText(
                  "Email Address",
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h4,

                  color: AppColors.white,
                ),
              ],
            ),

            SizedBox(height: 11.h),

            Form(
              key: formKey,
              child: TextFormField(
                controller: emailAddress,
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),

                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter email";
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.bubbleColor,
                  hintText: 'Email Address',
                  hintStyle: GoogleFonts.plusJakartaSans(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),

                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14.w,
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
            ),
            SizedBox(height: 25.h),
            SizedBox(
              height: 50.h,
              width: 1.sw,
              child: ButtonWidget(
                isLoading: isLoading,
                onPressed: () {
                  submitter();
                },
                title: 'Send Code',
                borderRadius: 50.r,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                textColor: AppColors.white,
                bgColor: AppColors.color0098E4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
