import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ProfilePage extends ConsumerStatefulWidget {
  ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  bool passwordVisible1 = false;
  bool passwordVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: 55,
          child: ButtonWidget(
            onPressed: () {},
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
                        )
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Image.asset(Assets.images.sms.path, height: 15, width: 15),
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
                  Image.asset(Assets.images.sms.path, height: 15, width: 15),
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
                  Image.asset(Assets.images.lock.path, height: 15, width: 15),
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
              _PasswordField(
                visible: passwordVisible1,
                onVisibilityChanged: (v) =>
                    setState(() => passwordVisible1 = v),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(Assets.images.lock.path, height: 15, width: 15),
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

              _PasswordField(
                visible: passwordVisible2,
                onVisibilityChanged: (v) =>
                    setState(() => passwordVisible2 = v),
              ),
              SizedBox(height: 8),
              MdSnsText(
                'Minimum 8 characters, with at least 1 uppercase, 1 lowercase,\nand 1 number (0–9) required.',
                size: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PasswordField extends StatelessWidget {
  final bool visible;
  final ValueChanged<bool> onVisibilityChanged;
  _PasswordField({required this.visible, required this.onVisibilityChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !visible,
      initialValue: '**********',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFF161E31),
        contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
            SizedBox(width: 8),
            IconButton(
              icon: Icon(
                visible ? Icons.visibility : Icons.visibility_off,
                color: Colors.white70,
              ),
              onPressed: () => onVisibilityChanged(!visible),
            ),
          ],
        ),
      ),
    );
  }
}
