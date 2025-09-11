import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/primary_button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class SiginIn extends ConsumerStatefulWidget {
  SiginIn({super.key});

  @override
  ConsumerState<SiginIn> createState() => _SiginInState();
}

class _SiginInState extends ConsumerState<SiginIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsGeometry.only(top: 40, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MdSnsText(
                  "Sign in to TradersGPT",

                  size: 32,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),

                MdSnsText(
                  "Ready to start where you left of?",

                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppColors.color274E87),
                      // padding: EdgeInsets.symmetric(vertical: 16),
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
                          "Continue With Google",

                          size: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.color274E87,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppColors.color274E87),
                      // padding: EdgeInsets.symmetric(vertical: 16),
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
                          "Continue With Apple",
                          size: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.color274E87,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 25),

                // Divider
                Row(
                  children: [
                    Expanded(child: Divider(color: AppColors.colorB2B2B7)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: MdSnsText(
                        "Sign in with Google or Email",
                        size: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    Expanded(child: Divider(color: AppColors.colorB2B2B7)),
                  ],
                ),

                SizedBox(height: 30),

                // Email TextField
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(Assets.images.sms.path, height: 15, width: 15),
                    SizedBox(width: 5),
                    MdSnsText(
                      "Email Address",

                      size: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ],
                ),
                SizedBox(height: 8),

                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.color141F35, // dark background
                    hintText: 'Burakdeniz@gmail.com',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // Password TextField
                Row(
                  children: [
                    Image.asset(Assets.images.lock.path, height: 15, width: 15),
                    SizedBox(width: 5),
                    MdSnsText(
                      "Password",

                      size: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: Image.asset(
                      scale: 2.9,
                      Assets.images.eye.path,
                      height: 15,
                      width: 15,
                    ),
                    filled: true,

                    fillColor: AppColors.color141F35,
                    hintText: '*********',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    border: OutlineInputBorder(
                      //
                    ),
                  ),
                ),
                SizedBox(height: 10),

                Container(
                  alignment: Alignment.centerRight,
                  child: MdSnsText(
                    "Forgot password?",
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  height: 55,
                  child: ButtonWidget(
                    onPressed: () {
                        context.goNamed(AppRoutes.chatPage.name);

                    },
                    title: 'Sign in',
                    borderRadius: 50,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.white,

                    bgColor: AppColors.color0098E4,
                  ),
                ),

                SizedBox(height: 20),

                // Sign up text
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(
                        fontFamily: "Plus Jakarta Sans",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
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

  static Widget _customTextField({
    required String hintText,
    IconData? suffixIcon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF141C3C),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: suffixIcon != null
              ? Icon(suffixIcon, color: Colors.white70)
              : null,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white54),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        ),
      ),
    );
  }
}
