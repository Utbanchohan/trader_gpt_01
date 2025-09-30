import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
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
  final bool isFromX;
  ProfilePage({super.key, required this.isFromX});
  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> with FormStateMixin {
  bool visible1 = false;
  bool visible2 = false;
  final formKey = GlobalKey<FormState>();
  TextEditingController fullname = TextEditingController();
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
        if (widget.isFromX == true) {
          fullname = TextEditingController(text: user!.name);
        }
      });
    }
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

  clearAllFileds() {
    email.text = "";
    fullname.text = "";
    if (mediaModel != null && mediaModel!.url.isNotEmpty) {
      mediaModel = MediaModel(url: "", type: "");
    }
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
          clearAllFileds();
          context.goNamed(
            AppRoutes.swipeScreen.name,
            extra: {"initialIndex": 0},
          );
        }
      }
    } else {
      $showMessage("Confirm Password should be same as create Password ");
    }
  }

  FutureOr<void> prfileUpdtae() async {
    final result = await ref
        .read(profileProvider.notifier)
        .updateProfile(
          name: fullname.value.text,
          image: mediaModel != null && mediaModel!.url.isNotEmpty
              ? mediaModel!.url
              : "",
        );

    if (result != null) {
      if (mounted) {
        clearAllFileds();
        context.pop();
      }
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
          margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 30.h),
          height: 50.h,
          child: ButtonWidget(
            isLoading: isLoading,
            onPressed: () {
              widget.isFromX == true ? prfileUpdtae() : submitter();
            },
            title: widget.isFromX == true ? "Update" : 'Done',
            borderRadius: 50.r,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            textColor: AppColors.white,
            bgColor: AppColors.color0098E4,
          ),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
          child: ListView(
            shrinkWrap: true,
            children: [
              widget.isFromX == true
                  ? GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          Assets.images.arrowBack.path,
                          height: 19.71.h,
                          width: 23.w,
                        ),
                      ),
                    )
                  : SizedBox(),
              SizedBox(height: 24.h),
              Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  Assets.images.appLogo.path,
                  height: 41.h,
                  width: 166.w,
                ),
              ),

              SizedBox(height: 22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MdSnsText(
                        widget.isFromX == true
                            ? "Edit Profile"
                            : 'Your Profile',
                        color: AppColors.white,
                        variant: TextVariant.h6,
                        fontWeight: TextFontWeightVariant.h1,
                      ),
                      SizedBox(height: 4.h),
                      MdSnsText(
                        'Setup your tradersgpt profile',
                        color: AppColors.white,
                        variant: TextVariant.h2,
                        fontWeight: TextFontWeightVariant.h4,
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
                                    : AssetImage(
                                            Assets.images.placeholderimage.path,
                                          )
                                          as ImageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                        loading: () => CircularProgressIndicator(),
                        error: (e, st) => MdSnsText("Error: $e"),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: AppColors.color1B254B,
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
                            width: 12.w,
                            height: 13.h,
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
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.sms.path,
                          height: 15.h,
                          width: 15.w,
                        ),
                        SizedBox(width: 5.w),
                        MdSnsText(
                          "Full Name",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,

                          color: AppColors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 9.h),
                    TextFormField(
                      controller: fullname,
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.white,
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
                        fillColor: AppColors.bubbleColor,
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                          color: AppColors.lightTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                          vertical: 10.h,
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
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Image.asset(
                          Assets.images.sms.path,
                          height: 15.h,
                          width: 15.w,
                        ),
                        SizedBox(width: 5.w),
                        MdSnsText(
                          "Email Address",

                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 9.h),
                    TextFormField(
                      readOnly: true,
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
                        final _emailRegex = RegExp(
                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                        );
                        if (_emailRegex.hasMatch(value.trim())) {
                          return null;
                        } else {
                          return "Please enter a valid email";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.bubbleColor,
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                          color: AppColors.lightTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 17.w,
                          vertical: 10.h,
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
                    SizedBox(height: 20.h),
                    widget.isFromX == true
                        ? SizedBox()
                        : Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    Assets.images.lock.path,
                                    height: 15.h,
                                    width: 15.w,
                                  ),
                                  SizedBox(width: 5.w),
                                  MdSnsText(
                                    "Create a password",
                                    variant: TextVariant.h4,
                                    fontWeight: TextFontWeightVariant.h4,
                                    color: AppColors.white,
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.h),
                              TextFormField(
                                controller: password,
                                obscureText: !visible1,
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                onChanged: (_) => setState(() {}),

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
                                  errorMaxLines: 4,
                                  hintStyle: GoogleFonts.plusJakartaSans(
                                    color: AppColors.lightTextColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  hintText: "Create Password",

                                  filled: true,
                                  fillColor: AppColors.bubbleColor,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 17.w,
                                    vertical: 10.h,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.check, color: AppColors.white),
                                      SizedBox(width: 8.w),
                                      IconButton(
                                        icon: Icon(
                                          visible1
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: AppColors.white,
                                        ),
                                        onPressed: () => setState(() {
                                          visible1 = !visible1;
                                        }),
                                      ),
                                    ],
                                  ),
                                  suffixIconConstraints: BoxConstraints(
                                    minWidth: 80.w,
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
                                  SizedBox(width: 5.w),
                                  MdSnsText(
                                    "Confirm Password",
                                    color: AppColors.white,
                                    variant: TextVariant.h4,
                                    fontWeight: TextFontWeightVariant.h4,
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.h),
                              TextFormField(
                                controller: confirmPassword,
                                obscureText: !visible2,
                                onChanged: (_) => setState(() {}),
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Password is required";
                                  }
                                  final pattern =
                                      r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$';
                                  final regex = RegExp(pattern);
                                  return regex.hasMatch(value)
                                      ? null
                                      : "Confirm Password should be same as create Password";
                                },
                                decoration: InputDecoration(
                                  errorMaxLines: 4,
                                  hintStyle: GoogleFonts.plusJakartaSans(
                                    color: AppColors.lightTextColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  hintText: 'Confirm Password',
                                  filled: true,
                                  fillColor: AppColors.bubbleColor,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 17.w,
                                    vertical: 10.h,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.check, color: AppColors.white),
                                      SizedBox(width: 8.w),
                                      IconButton(
                                        icon: Icon(
                                          visible2
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: AppColors.white,
                                        ),
                                        onPressed: () => setState(() {
                                          visible2 = !visible2;
                                        }),
                                      ),
                                    ],
                                  ),
                                  suffixIconConstraints: BoxConstraints(
                                    minWidth: 80.w,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.h),
                            ],
                          ),
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
