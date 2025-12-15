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
import 'package:trader_gpt/src/shared/custom_message.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../core/local/repository/local_storage_repository.dart';
import '../../../../shared/mixin/form_state_mixin.dart';
import '../../../../shared/states/app_loading_state.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginInState();
}

class _LoginInState extends ConsumerState<LoginScreen> with FormStateMixin {
  bool visible = false;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool isChecked = false;
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

  getLocalData() async {
    email.text = ref.read(localDataProvider).getEmail ?? "";
    isChecked = ref.read(localDataProvider).getRemamberMe == "true"
        ? true
        : false;
    password.text = ref.read(localDataProvider).getPassword1 ?? "";
  }

  emptyLocalData() {
    ref.read(localDataProvider).setEmail("");
    ref.read(localDataProvider).setPassword("");
    ref.read(localDataProvider).setRememberMe("false");
  }

  @override
  void initState() {
    getLocalData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(loginProvider) == AppLoadingState.loading();

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 20, right: 20),
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
                // SizedBox(height: 5),
                Image.asset(Assets.images.appLogo.path, width: 203, height: 50),

                SizedBox(height: 20),
                MdSnsText(
                  "Ready to start where you left of?",
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h4,

                  color: AppColors.white,
                ),
                SizedBox(height: 40),

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
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(width: 5),
                          MdSnsText(
                            "Email Address",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,

                            color: AppColors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 9),

                      // Email field
                      TextFormField(
                        controller: email,
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Please enter email";
                          }

                          // ❌ Agar email me space hai to invalid
                          if (value.contains(' ')) {
                            return "Email should not contain spaces";
                          }

                          // ✅ Email regex
                          final _emailRegex = RegExp(
                            r'^[\w\.\+\-]+@([\w-]+\.)+[\w-]{2,4}$',
                          );

                          if (_emailRegex.hasMatch(value.trim())) {
                            return null;
                          } else {
                            return "Please enter a valid email";
                          }
                        },

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
                            horizontal: 24,
                            vertical: 10,
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

                      SizedBox(height: 16),

                      // Password label
                      Row(
                        children: [
                          Image.asset(
                            Assets.images.lock.path,
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(width: 5),
                          MdSnsText(
                            "Password",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,

                            color: AppColors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 9),

                      // Password field
                      TextFormField(
                        obscureText: !visible,
                        controller: password,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Please enter your Password";
                          }
                        },
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
                            horizontal: 24,
                            vertical: 10,
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

                SizedBox(height: 10),

                // Forgot password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        StatefulBuilder(
                          builder: (context, setState) {
                            return Row(
                              children: [
                                Transform.scale(
                                  scale: 0.85, // 🔹 slightly smaller checkbox
                                  child: Checkbox(
                                    value: isChecked,
                                    onChanged: (value) async {
                                      if (value!) {
                                        if (email.text.isNotEmpty &&
                                            password.text.isNotEmpty) {
                                          setState(() {
                                            isChecked = value;
                                          });
                                          await ref
                                              .read(localDataProvider)
                                              .setEmail(email.text);
                                          await ref
                                              .read(localDataProvider)
                                              .setRememberMe(value.toString());
                                          await ref
                                              .read(localDataProvider)
                                              .setPassword(
                                                password.text.toString(),
                                              );
                                        } else {
                                          $showMessage(
                                            "Please Fill all fields",
                                            isError: false,
                                          );
                                        }
                                      } else {
                                        setState(() {
                                          isChecked = value;
                                        });
                                        emptyLocalData();
                                      }
                                    },
                                    activeColor: AppColors.secondaryColor,
                                    checkColor: Colors.white,
                                    side: BorderSide(
                                      color: Colors.grey,
                                      width: 1.3,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    visualDensity: VisualDensity(
                                      horizontal: -4,
                                      vertical: -4,
                                    ),
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                ),
                                SizedBox(width: 4),
                                MdSnsText(
                                  "Remember Me",
                                  variant: TextVariant.h4,
                                  fontWeight: TextFontWeightVariant.h4,
                                  color: AppColors.white,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          context.pushNamed(AppRoutes.forgetPassword.name);
                        },
                        child: MdSnsText(
                          "Forgot password?",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 35),

                // Sign in button
                SizedBox(
                  height: 50,
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

                SizedBox(height: 35),

                Row(
                  children: [
                    Expanded(child: Divider(color: AppColors.colorB2B2B7)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
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

                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 55,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: AppColors.color274E87),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Assets.images.google.path,
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(width: 10),
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
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: SizedBox(
                        height: 55,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: AppColors.color274E87),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Assets.images.apple.path,
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(width: 10),
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
                    ),
                  ],
                ),

                // Apple button
                SizedBox(height: 35),

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
