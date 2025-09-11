import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Assets.images.arrowBack.path, height: 19, width: 23),

              SizedBox(height: 45),

              MdSnsText(
                "Let’s get started",

                color: AppColors.white,
                size: 32,
                fontWeight: FontWeight.w700,
              ),

              SizedBox(height: 10),

              MdSnsText(
                "Enter your email address. we will send you\nthe confirmation code there",
                color: AppColors.white,
                size: 16,
                fontWeight: FontWeight.w400,
              ),

              SizedBox(height: 30),

              // Email Field
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(Assets.images.sms.path, height: 15, width: 15),
                  SizedBox(width: 5),
                  Text(
                    "Email Address",
                    style: TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
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

              Spacer(),

              Container(
                height: 55,
                child: ButtonWidget(
                  onPressed: () {
                    context.goNamed(AppRoutes.verifaction.name);
                  },
                  title: 'Create Account',
                  borderRadius: 50,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.white,
                  bgColor: AppColors.color147EE8,
                ),
              ),
              SizedBox(height: 15),

              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: MdSnsText(
                    "Already have an account? Sign in",

                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
