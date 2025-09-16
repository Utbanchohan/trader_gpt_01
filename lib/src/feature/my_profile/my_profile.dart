import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  bool updatesEnabled = true;
  bool alertsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B2A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset(
                  Assets.images.arrowBack.path,
                  height: 19.71.h,
                  width: 23.w,
                ),
              ),
              const SizedBox(height: 20),

              // Profile Section
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            "assets/images/profile.jpg",
                          ),
                        ),

                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: AppColors.bubbleColor,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              Assets.images.camera.path,
                              height: 19.11.h,
                              width: 18.34.w,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    MdSnsText(
                      "Burak Deniz",
                      color: AppColors.white,
                      size: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    MdSnsText(
                      "Burakdeniz@gmail.com",
                      color: AppColors.colorB2B2B7,
                      size: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 45),

              MdSnsText(
                "My Profile",
                color: AppColors.colorB2B2B7,
                size: 16,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 15),

              _buildProfileItem(
                asset: Assets.images.edit2.path,
                title: "Personal Information",
                onTap: () {},
              ),
              _buildProfileItem(
                asset: Assets.images.receipt.path,
                title: "Membership",
                onTap: () {},
              ),
              _buildProfileItem(
                asset: Assets.images.a4.path,
                title: "Payment Method",
                onTap: () {},
              ),
              _buildProfileItem(
                asset: Assets.images.messageSearch5.path,
                title: "Contact Support",
                onTap: () {},
                isLast: true,
              ),

              const SizedBox(height: 20),

              // Settings Section
              MdSnsText(
                "Settings",
                color: AppColors.colorB2B2B7,
                size: 16,
                fontWeight: FontWeight.w400,
              ),

              SizedBox(height: 15),

              // Updates Toggle
              _buildSwitchItem(
                title: "Updates",
                assect: Assets.images.rotateLeft6.path,
                value: updatesEnabled,
                onChanged: (val) {
                  setState(() {
                    updatesEnabled = val;
                  });
                },
              ),

              // Alerts Toggle
              _buildSwitchItem(
                title: "Alerts",
                assect: Assets.images.notification7.path,
                value: alertsEnabled,
                onChanged: (val) {
                  setState(() {
                    alertsEnabled = val;
                  });
                },
              ),

              _buildProfileItem(
                asset: Assets.images.cpu8.path,
                title: "Memory",
                onTap: () {},
              ),
              _buildProfileItem(
                asset: Assets.images.driver9.path,
                title: "Chat Model",
                onTap: () {},
                isLast: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Profile List Item
  Widget _buildProfileItem({
    required String asset,
    required String title,
    required VoidCallback onTap,
    bool isLast = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.colorB3B3B3)),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Image.asset(asset, height: 18.h, width: 18.w),
        title: MdSnsText(
          title,
          color: AppColors.white,
          size: 16,
          fontWeight: FontWeight.w400,
        ),
        trailing: Image.asset(
          Assets.images.vector1.path,
          height: 14.h,
          width: 7.w,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
      ),
    );
  }

  /// Switch Item with Custom Toggle
  Widget _buildSwitchItem({
    required String title,
    required String assect,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.2))),
      ),
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.all(0),
        leading: Image(
          image: AssetImage(assect),
          color: AppColors.white,
          height: 18,
          width: 18,
        ),
        title: Text(
          title,
          style: const TextStyle(color: AppColors.white, fontSize: 16),
        ),
        trailing: CustomToggleSwitch(value: value, onChanged: onChanged),
      ),
    );
  }
}

/// Custom Toggle Widget
class CustomToggleSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomToggleSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<CustomToggleSwitch> createState() => _CustomToggleSwitchState();
}

class _CustomToggleSwitchState extends State<CustomToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 44,
        height: 22,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: widget.value ? Colors.blue : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 300),
          alignment: widget.value
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: widget.value ? AppColors.white : AppColors.color0098E4,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
