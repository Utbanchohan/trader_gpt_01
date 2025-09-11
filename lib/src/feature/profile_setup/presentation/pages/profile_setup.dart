import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/profile_setup/presentation/provider/profile_setup.dart';
import 'package:trader_gpt/src/shared/custom_message.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../shared/mixin/form_state_mixin.dart';

class ProfilePage extends ConsumerStatefulWidget {
  ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> with FormStateMixin {
  bool visible1 = false;
  bool visible2 = false;
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  FutureOr<void> onSubmit() async {
    if (password.value.text == confirmPassword.value.text) {
      final result = await ref
          .read(profileProvider.notifier)
          .onSubmit(
            email: email.value.text,
            password: password.value.text,
            fullname: fullname.value.text,
            imageUrl: '',
          );
      if (result != null) {
        if (mounted) {
          context.goNamed(AppRoutes.signInPage.name);
        }
      }
    } else {
      $showMessage("Confirm Password should be same as Password ");
    }
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(localDataProvider).getUser();

    return Scaffold(
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: 55,
          child: ButtonWidget(
            onPressed: () {
              submitter();
            },
            title: 'Done',
            borderRadius: 50,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            textColor: AppColors.white,
            bgColor: AppColors.color147EE8,
          ),
        ),
      ),
      backgroundColor: Color(0xFF0E1738),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MdSnsText(
                        'Your Profile',
                        color: AppColors.white,
                        size: 32,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: 4),
                      MdSnsText(
                        'Setup your tradersgpt profile',
                        color: AppColors.white,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 63,
                        width: 63,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(Assets.images.profile.path),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 24,
                        decoration: BoxDecoration(
                          color: AppColors.color1B254B,
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(4),
                        child: Image.asset(
                          Assets.images.camera.path,
                          width: 12.8,
                          height: 13.33,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: 32),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.sms.path,
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(width: 6),
                        MdSnsText(
                          "Full Name",
                          size: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
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
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Please enter your Full name";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.color141F35, // dark background
                        hintText: 'Burak Deniz',
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
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.sms.path,
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(width: 6),
                        MdSnsText(
                          "Email Address",
                          size: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
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
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
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
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.lock.path,
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(width: 6),
                        MdSnsText(
                          "Create a password",
                          size: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: password,
                      obscureText: !visible1,
                      onChanged: (_) => setState(() {}),
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        }
                        final pattern =
                            r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$';
                        final regex = RegExp(pattern);
                        return regex.hasMatch(value)
                            ? null
                            : "✖ At least 8 characters long " +
                                  "✖ At least one number (0–9) " +
                                  "✖ At least one uppercase letter (A–Z) " +
                                  "✖ At least one special character";
                      },
                      decoration: InputDecoration(
                        hintText: "Create Password",
                        filled: true,
                        fillColor: const Color(0xFF161E31),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 10,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check_circle, color: Colors.white70),
                            const SizedBox(width: 8),
                            IconButton(
                              icon: Icon(
                                visible1
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white70,
                              ),
                              onPressed: () => setState(() {
                                visible1 = !visible1;
                              }),
                            ),
                          ],
                        ),
                        suffixIconConstraints: const BoxConstraints(
                          minWidth: 80,
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.lock.path,
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(width: 6),
                        MdSnsText(
                          "Create a password",
                          size: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    TextFormField(
                      controller: confirmPassword,
                      obscureText: !visible2,
                      onChanged: (_) => setState(() {}),
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        }
                        final pattern =
                            r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$';
                        final regex = RegExp(pattern);
                        return regex.hasMatch(value)
                            ? null
                            : "✖ At least 8 characters long " +
                                  "✖ At least one number (0–9) " +
                                  "✖ At least one uppercase letter (A–Z) " +
                                  "✖ At least one special character";
                      },
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        filled: true,
                        fillColor: const Color(0xFF161E31),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 10,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check_circle, color: Colors.white70),
                            const SizedBox(width: 8),
                            IconButton(
                              icon: Icon(
                                visible2
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white70,
                              ),
                              onPressed: () => setState(() {
                                visible2 = !visible2;
                              }),
                            ),
                          ],
                        ),
                        suffixIconConstraints: const BoxConstraints(
                          minWidth: 80,
                        ),
                      ),
                    ),

                    SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
