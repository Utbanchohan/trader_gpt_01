import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<String> icons = [
    'assets/images/apple.png',
    'assets/images/google.png',
    'assets/images/meta.png',
    'assets/images/tesla.png',
    'assets/images/hp.png',
    'assets/images/microsoft.png',
    'assets/images/jnj.png',
    'assets/images/visa.png',
  ];

  Timer? _timer;
  double _scrollPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 60), (timer) {
      if (_scrollController.hasClients) {
        _scrollPosition += 2;
        if (_scrollPosition > _scrollController.position.maxScrollExtent) {
          _scrollPosition = 0;
        }
        _scrollController.animateTo(
          _scrollPosition,
          duration: const Duration(milliseconds: 60),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF071020),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  Assets.images.manicon.path,
                  height: 42.63,
                  width: 230,
                ),

                SizedBox(height: 27),
                Image.asset(
                  Assets.images.cerosil.path,
                  // height: 42.63,
                  width: MediaQuery.sizeOf(context).width,
                ),
                SizedBox(height: 53.65),

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
                  Container(
                    height: 55,
                    child: ButtonWidget(
                      onPressed: () {
                        context.goNamed(AppRoutes.signUpPage.name);
                      },
                      title: 'Create account',
                      borderRadius: 50,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.white,
                      bgColor: AppColors.color147EE8,
                    ),
                  ),
                  SizedBox(height: 12),

                  Container(
                    height: 55,
                    child: ButtonWidget(
                      onPressed: () {
                        context.goNamed(AppRoutes.signInPage.name);
                      },
                      title: 'Sign in',
                      borderRadius: 50,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.color274E87,
                      borderColor: AppColors.color203864,
                      bgColor: AppColors.color091224,
                    ),
                  ),

                  SizedBox(height: 16),

                  // Terms and Privacy Policy Text
                  Text(
                    "By Signing Up you agree to our Terms & Privacy Policy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white54, fontSize: 12),
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

Widget buildCompanyIcon(String imagePath) {
  return Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
      color: Color(0xFF141C2F),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Center(
      child: Image.asset(imagePath, height: 32, fit: BoxFit.contain),
    ),
  );
}
