import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(
        7,
        16,
        32,
        1,
      ), // Dark background color
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 27),
                Image.asset(
                  "assets/images/Frame 1171275449.png", // Replace with your logo
                  height: 42.63,
                  width: 230,
                ),
                SizedBox(height: 53.65),

                Image.asset(
                  "assets/images/Group 1171275438.png", // Replace with your logo
                  height: 263.35,
                  // fit: BoxFit.cover,
                ),

                SizedBox(height: 25),
                Container(
                  width: 414,
                  // margin: EdgeInsets.only(left: 13, right: 13),
                  child: MdSnsText(
                    "Unlock your trading\npotential with AI insights",
                    textAlign: TextAlign.center,

                    letterSpacing: 0,
                    color: Colors.white,
                    size: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                MdSnsText(
                  "Experience real-time market insights, advanced analytics, "
                  "and intelligent trade signals",
                  textAlign: TextAlign.center,
                  color: Colors.white,
                  letterSpacing: 0,
                  size: 16,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  // Create Account Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF009CFF),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: MdSnsText(
                        "Create account",

                        size: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Sign In Button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: const Color.fromRGBO(39, 78, 135, 1),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          fontFamily: "Plus Jakarta Sans",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(39, 78, 135, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  MdSnsText(
                    "By Signing Up you agree to our Terms & Privacy Policy.",
                    textAlign: TextAlign.center,
                    color: Colors.white54,
                    size: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
