import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/sigin_up/presentation/provider/sign_up.dart';
import 'package:trader_gpt/src/feature/verifaction/presentation/provider/verifaction_provider.dart';
import 'package:trader_gpt/src/shared/mixin/form_state_mixin.dart';
import 'package:trader_gpt/src/shared/states/app_loading_state.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class Verifaction extends ConsumerStatefulWidget {
  final String email;
  const Verifaction({super.key, required this.email});

  @override
  ConsumerState<Verifaction> createState() => _VerifactionState();
}

class _VerifactionState extends ConsumerState<Verifaction> with FormStateMixin {
  TextEditingController otp = TextEditingController();
  int seconds = 30; // ⏳ timer start from 30
  Timer? _timer;
  bool isResending = false;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    seconds = 30;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        t.cancel();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Code expired, please request again."),
            backgroundColor: Colors.red,
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  FutureOr<void> onSubmit() async {
    final result = await ref
        .read(verifactionProviderProvider.notifier)
        .onSubmit(email: widget.email, otp: otp.value.text);
    if (result != null && mounted) {
      context.goNamed(AppRoutes.profilePage.name);
    }
  }

  FutureOr<void> resendCode() async {
    final result = await ref
        .read(signUpProvider.notifier)
        .onSubmit(email: widget.email);
    if (result != null) {
      if (mounted) {
        startTimer();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(verifactionProviderProvider) == AppLoadingState.loading();

    return Scaffold(
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          height: 55.h,
          margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 40.h),
          child: ButtonWidget(
            isLoading: isLoading,
            onPressed: () => otp.text.isNotEmpty ? submitter() : null,
            title: 'Continue',
            borderRadius: 50.r,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            textColor: AppColors.white,
            bgColor: otp.text.isNotEmpty
                ? AppColors.color0098E4
                : AppColors.color9EAAC0,
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
                onPressed: () => context.goNamed(AppRoutes.signUpPage.name),
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
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Image.asset(Assets.images.appLogo.path, height: 41.h, width: 166.w),

            SizedBox(height: 30.h),

            MdSnsText(
              '6-digit code',
              color: AppColors.white,
              variant: TextVariant.h6,
              fontWeight: TextFontWeightVariant.h1,
            ),
            SizedBox(height: 12.h),

            MdSnsText(
              'Enter the code sent to\n${widget.email}',
              color: AppColors.white,
              variant: TextVariant.h2,
              fontWeight: TextFontWeightVariant.h4,
            ),
            SizedBox(height: 30.h),

            Form(
              key: formKey,
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                textStyle: TextStyle(fontSize: 20, color: AppColors.white),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(14.r),
                  fieldHeight: 50.h,
                  fieldWidth: 48.w,
                  borderWidth: 0,
                  activeColor: Colors.transparent,
                  inactiveColor: Colors.transparent,
                  selectedColor: Colors.transparent,
                  activeFillColor: AppColors.bubbleColor,
                  inactiveFillColor: AppColors.bubbleColor,
                  selectedFillColor: AppColors.bubbleColor,
                ),
                cursorColor: Colors.white,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                onChanged: (value) {
                  otp.text = value;
                },
                onCompleted: (value) {
                  otp.text = value;
                  FocusScope.of(context).unfocus();
                  submitter();
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (seconds == 0 && !isResending)
                      ? () async {
                          setState(() {
                            isResending = true;
                          });

                          await resendCode();

                          setState(() {
                            isResending = false;
                          });
                        }
                      : null,
                  child: MdSnsText(
                    'Resend code',
                    color: (seconds == 0 && !isResending)
                        ? AppColors.white
                        : AppColors.bluishgrey404F81,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h3,
                  ),
                ),

                MdSnsText(
                  '00:${seconds.toString().padLeft(2, '0')}',
                  color: seconds == 0
                      ? AppColors.bluishgrey404F81
                      : AppColors.white,
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
