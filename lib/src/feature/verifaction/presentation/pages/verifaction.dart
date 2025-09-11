import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/verifaction/presentation/provider/verifaction_provider.dart';
import 'package:trader_gpt/src/shared/mixin/form_state_mixin.dart';
import 'package:trader_gpt/src/shared/states/app_loading_state.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class Verifaction extends ConsumerStatefulWidget {
  final String email;
  Verifaction({super.key, required this.email});
  @override
  ConsumerState<Verifaction> createState() => _VerifactionState();
}

class _VerifactionState extends ConsumerState<Verifaction> with FormStateMixin {
  TextEditingController otp = TextEditingController();
  int seconds = 28;

  @override
  FutureOr<void> onSubmit() async {
    final result = await ref
        .read(verifactionProviderProvider.notifier)
        .onSubmit(email: widget.email, otp: otp.value.text);
    if (result != null) {
      if (mounted) {
        context.goNamed(AppRoutes.profilePage.name);
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
          height: 55,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: ButtonWidget(
            isLoading: isLoading,

            onPressed: () {
              submitter();

              // context.goNamed(AppRoutes.profilePage.name);
            },
            title: 'Submit',
            borderRadius: 50,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            textColor: AppColors.white,

            bgColor: AppColors.color147EE8,
          ),
        ),
      ),
      backgroundColor: Color(0xFF0E1738),
      appBar: AppBar(
        backgroundColor: Color(0xFF0E1738),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 15, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            MdSnsText(
              '6-digit code',

              color: AppColors.white,
              size: 32,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 25),
            MdSnsText(
              'Enter the code sent to\n${widget.email}',
              color: AppColors.white,
              fontWeight: FontWeight.w400,
              size: 16,
            ),
            SizedBox(height: 30),
            Form(
              key: formKey,
              child: OtpTextField(
                numberOfFields: 6,
                borderRadius: BorderRadius.circular(12),
                fieldWidth: 57,
                fieldHeight: 57,
                fillColor: AppColors.color141F35,
                filled: true,

                borderColor: Colors.transparent,
                focusedBorderColor: Colors.transparent,
                enabledBorderColor: Colors.transparent,

                showFieldAsBox: true,
                margin: const EdgeInsets.only(left: 10),

                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                ),

                // Ye sirf typing ke waqt call hoga (har digit par)
                onCodeChanged: (String code) {
                  otp.text = code;
                },

                // Ye tabhi call hoga jab user ne 6 digits puri kar di
                onSubmit: (String code) {
                  otp.text = code;

                  // optional: keyboard band karne ke liye
                  FocusScope.of(context).unfocus();

                  submitter();
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: MdSnsText(
                    'Resend code',
                    color: AppColors.bluishgrey404F81,
                    fontWeight: FontWeight.w500,
                    size: 12,
                  ),
                ),
                MdSnsText(
                  '00:${seconds.toString().padLeft(2, '0')}',
                  color: AppColors.white,
                  size: 12,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
