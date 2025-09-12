import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/sigin_up/presentation/provider/sign_up.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../shared/mixin/form_state_mixin.dart';
import '../../../../shared/states/app_loading_state.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> with FormStateMixin {
  final TextEditingController email = TextEditingController();

  @override
  FutureOr<void> onSubmit() async {
    final result = await ref
        .read(signUpProvider.notifier)
        .onSubmit(email: email.value.text);
    if (result != null) {
      if (mounted) {
        context.goNamed(
          AppRoutes.verifaction.name,
          pathParameters: {'email': email.value.text},
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(signUpProvider) == AppLoadingState.loading();
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        leading: SizedBox(
                height: 19.h,
                width: 23.w,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    context.goNamed(AppRoutes.getStartedScreen.name);
                  },
                  icon: Image.asset(
                    Assets.images.arrowBack.path,
                    height: 19.h,
                    width: 23.w,
                  ),
                ),
              ),
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
      
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              MdSnsText(
                "Let’s get started",
                color: AppColors.white,
                size: 32,
                fontWeight: FontWeight.w700,
              ),

              SizedBox(height: 10.h),

              MdSnsText(
                "Enter your email address. we will send you\nthe confirmation code there",
                color: AppColors.white,
                size: 16,
                fontWeight: FontWeight.w400,
              ),

              SizedBox(height: 30.h),

              // Email Field Label
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.images.sms.path,
                    height: 15.h,
                    width: 15.w,
                  ),
                  SizedBox(width: 3.w),
                  MdSnsText(
                    "Email Address",
                    size: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ],
              ),

              SizedBox(height: 8.h),

              // Email Field
              Form(
                key: formKey,
                child: TextFormField(
                  controller: email,
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),

                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Please enter email";
                    }
                    final _emailRegex = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    );
                    if (_emailRegex.hasMatch(value.trim())) {
                      return null;
                    } else {
                      return "Please enter a valid email/phone";
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.color141F35,
                    hintText: 'Email',
                    hintStyle: GoogleFonts.plusJakartaSans(
                      color: AppColors.color677FA4,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),

                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 10.h,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                ),
              ),

               Spacer(),

              SizedBox(
                height: 50.h,
                width: 1.sw,
                child: ButtonWidget(
                  isLoading: isLoading,
                  onPressed: () {
                    submitter();
                  },
                  title: 'Create Account',
                  borderRadius: 50.r,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.white,
                  bgColor: AppColors.secondaryColor,
                ),
              ),

              SizedBox(height: 15.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      context.goNamed(AppRoutes.signInPage.name);
                    },
                    child: MdSnsText(
                      "Already have an account? Sign in",
                      size: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
