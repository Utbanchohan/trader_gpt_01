import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class ProfileCardShimmer extends StatelessWidget {
  final String? imagePath; // <-- optional image path

  const ProfileCardShimmer({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    final bool hasImage = imagePath != null && imagePath!.isNotEmpty;

    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image or placeholder
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: hasImage
                ? Image.network(
                    imagePath!,
                    height: 122.h,
                    width: 122.w,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Image.asset(
                      "assets/images/Placeholderimage.png",
                      height: 122.h,
                      width: 122.w,
                      fit: BoxFit.cover,
                    ),
                  )
                : Image.asset(
                    "assets/images/Placeholderimage.png",
                    height: 122.h,
                    width: 122.w,
                    fit: BoxFit.cover,
                  ),
          ),
          SizedBox(height: 8.h),

          // ✨ Shimmer for text placeholders only
          Shimmer.fromColors(
            baseColor: AppColors.color1B254B.withOpacity(0.3),
            highlightColor: AppColors.colorB3B3B3.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Designation shimmer bar
                Container(
                  height: 14.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                SizedBox(height: 6.h),

                // Name shimmer bar
                Container(
                  height: 14.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
