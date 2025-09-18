import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/profile_setup/presentation/provider/profile_setup.dart';
import 'package:trader_gpt/src/feature/s3_uploader/domain/models/media_model.dart';
import 'package:trader_gpt/src/feature/s3_uploader/presentation/image_pickert.dart';
import 'package:trader_gpt/src/feature/s3_uploader/providers/upload_provider.dart';
import 'package:trader_gpt/src/shared/custom_message.dart';
import 'package:trader_gpt/src/shared/states/app_loading_state.dart';
import 'package:trader_gpt/src/shared/widgets/app_button/button.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../shared/mixin/form_state_mixin.dart';
import '../../../sign_in/domain/model/sign_in_response_model/login_response_model.dart';

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
  String? imageUrl;
  User? user;
  MediaModel? mediaModel;

  getUser() async {
    dynamic userData = await ref.read(localDataProvider).getUser();
    user = User.fromJson(userData);
    if (user != null && user!.email.isNotEmpty) {
      setState(() {
        email = TextEditingController(text: user!.email);
      });
    }
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  FutureOr<void> onSubmit() async {
    if (password.value.text == confirmPassword.value.text) {
      final result = await ref
          .read(profileProvider.notifier)
          .onSubmit(
            email: email.value.text,
            password: password.value.text,
            fullname: fullname.value.text,
            imageUrl: mediaModel != null && mediaModel!.url.isNotEmpty
                ? mediaModel!.url
                : "",
          );
      if (result != null) {
        if (mounted) {
          context.goNamed(AppRoutes.chatPage.name);
        }
      }
    } else {
      $showMessage("Confirm Password should be same as Password ");
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(profileProvider) == AppLoadingState.loading();
    final state = ref.watch(uploadNotifierProvider);

    return Scaffold(
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          height: 50.h,
          child: ButtonWidget(
            isLoading: isLoading,
            onPressed: () {
              submitter();
            },
            title: 'Done',
            borderRadius: 50.r,
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
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height: 24.h),
              Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  Assets.images.appLogo.path,
                  height: 41.h,
                  width: 166.w,
                ),
              ),

              SizedBox(height: 24.h),
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
                      SizedBox(height: 4.h),
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
                      state.when(
                        data: (media) {
                          mediaModel = media;
                          return Container(
                            height: 63.h,
                            width: 63.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: mediaModel != null
                                    ? NetworkImage(mediaModel!.url)
                                    : AssetImage(Assets.images.profile.path)
                                          as ImageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                        loading: () => CircularProgressIndicator(),
                        error: (e, st) => Text("Error: $e"),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: AppColors.bubbleColor,
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.25,
                                child: UploadImageScreen(),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 25.h,
                          width: 24.w,
                          decoration: BoxDecoration(
                            color: AppColors.color1B254B,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(4.w),
                          child: Image.asset(
                            Assets.images.camera.path,
                            width: 12.8.w,
                            height: 13.33.h,
                          ),
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
                    SizedBox(height: 32.h),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.sms.path,
                          height: 15.h,
                          width: 15.w,
                        ),
                        SizedBox(width: 6.w),
                        MdSnsText(
                          "Full Name",
                          size: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: fullname,
                      style: TextStyle(
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
                        fillColor: AppColors.color141F35,
                        hintText: 'Burak Deniz',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 10.h,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.sms.path,
                          height: 15.h,
                          width: 15.w,
                        ),
                        SizedBox(width: 6.w),
                        MdSnsText(
                          "Email Address",
                          size: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      readOnly: true,
                      controller: email,
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
                        fillColor: AppColors.color141F35,
                        hintText: 'Burakdeniz@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 10.h,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.lock.path,
                          height: 15.h,
                          width: 15.w,
                        ),
                        SizedBox(width: 6.w),
                        MdSnsText(
                          "Create a password",
                          size: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: password,
                      obscureText: !visible1,
                      onChanged: (_) => setState(() {}),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        }
                        final pattern =
                            r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$';
                        final regex = RegExp(pattern);
                        return regex.hasMatch(value)
                            ? null
                            : "✖ At least 8 characters long "
                                  "✖ At least one number (0–9) "
                                  "✖ At least one uppercase letter (A–Z) "
                                  "✖ At least one special character";
                      },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        hintText: "Create Password",
                        filled: true,
                        fillColor: Color(0xFF161E31),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 10.h,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check_circle, color: Colors.white70),
                            SizedBox(width: 8.w),
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
                        suffixIconConstraints: BoxConstraints(minWidth: 80.w),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.lock.path,
                          height: 15.h,
                          width: 15.w,
                        ),
                        SizedBox(width: 6.w),
                        MdSnsText(
                          "Confirm Password",
                          size: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: confirmPassword,
                      obscureText: !visible2,
                      onChanged: (_) => setState(() {}),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        }
                        final pattern =
                            r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$';
                        final regex = RegExp(pattern);
                        return regex.hasMatch(value)
                            ? null
                            : "✖ At least 8 characters long "
                                  "✖ At least one number (0–9) "
                                  "✖ At least one uppercase letter (A–Z) "
                                  "✖ At least one special character";
                      },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        hintText: 'Confirm Password',
                        filled: true,
                        fillColor: Color(0xFF161E31),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 10.h,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check_circle, color: Colors.white70),
                            SizedBox(width: 8.w),
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
                        suffixIconConstraints: BoxConstraints(minWidth: 80.w),
                      ),
                    ),
                    SizedBox(height: 8.h),
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
