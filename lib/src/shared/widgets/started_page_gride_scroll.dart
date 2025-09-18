import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:trader_gpt/gen/assets.gen.dart';

class StartedPageGrideScroll extends StatefulWidget {
  StartedPageGrideScroll({super.key});
  final List<String> logos = [
    Assets.images.apple.path,
    Assets.images.google.path,
    Assets.images.meta.path,
    Assets.images.tesla.path,
    Assets.images.nvidia.path,
    Assets.images.netFilex.path,
    Assets.images.hp.path,
    Assets.images.window.path,
    Assets.images.jJ.path,
    Assets.images.visa.path,
  ];

  @override
  State<StartedPageGrideScroll> createState() => _StartedPageGrideScrollState();
}

class _StartedPageGrideScrollState extends State<StartedPageGrideScroll> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScrollLoopAutoScroll(
          delayAfterScrollInput: const Duration(seconds: 1),
          enableScrollInput: false,
          duration: const Duration(seconds: 200),
          scrollDirection: Axis.horizontal,
          gap: 0,
          reverseScroll: true,
          child: Row(
            children: widget.logos.map((url) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 15.w,
                    top: 15.h,
                    bottom: 15.h,
                  ),
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19.r),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.25),
                        Colors.white.withOpacity(0.05),
                      ],
                    ),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1.2,
                    ),
                  ),
                  child: Image.asset(url, height: 20, width: 20),
                ),
              );
            }).toList(),
          ),
        ),

        SizedBox(height: 20.h),
        ScrollLoopAutoScroll(
          delayAfterScrollInput: Duration(seconds: 1),
          enableScrollInput: false,
          duration: const Duration(seconds: 200),
          scrollDirection: Axis.horizontal,
          gap: 0,
          reverseScroll: false,
          child: Row(
            children: widget.logos.map((url) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5), // 5 + 5 = 10
                child: Container(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 15.w,
                    top: 15.h,
                    bottom: 15.h,
                  ),
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19.r),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.25), // light transparent
                        Colors.white.withOpacity(0.05), // deep transparent
                      ],
                    ),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1.2,
                    ),
                  ),
                  child: Image.asset(url),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
