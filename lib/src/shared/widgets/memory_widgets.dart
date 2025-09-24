import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class MemoryWidgets extends StatelessWidget {
  final VoidCallback onClear;
  final VoidCallback onClose;

  const MemoryWidgets({
    super.key,
    required this.onClear,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 414,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 22,
          top: 22,
        ),
        decoration: BoxDecoration(
          color: AppColors.bubbleColor, // Background dark blue
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MdSnsText(
                  "Memory",
                  color: AppColors.white,
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h1,
                  decoration:
                      TextDecoration.none, // 👈 Yeh line underline hata degi
                ),
                GestureDetector(
                  onTap: onClear,
                  child: Image.asset(
                    Assets.images.add.path,
                    height: 12,
                    width: 12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Column(
              children: List.generate(5, (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    decoration: BoxDecoration(
                      color: AppColors.color091224,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: MdSnsText(
                            "Lorem ipsum dolor sit amet...",
                            color: AppColors.color0xB3FFFFFF,
                            variant: TextVariant.h2,
                            fontWeight: TextFontWeightVariant.h4,
                            textOverflow: TextOverflow.ellipsis,
                            decoration: TextDecoration
                                .none, // 👈 Yeh line underline hata degi
                          ),
                        ),
                        GestureDetector(
                          onTap: onClear,
                          child: Image.asset(
                            Assets.images.trash.path,
                            height: 21,
                            width: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),

            SizedBox(height: 20),

            SizedBox(
              height: 43.h,
              width: 146.w,
              child: ElevatedButton(
                onPressed: onClear,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.color203864,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  // padding: const EdgeInsets.symmetric(
                  //   horizontal: 40,
                  //   vertical: 14,
                  // ),
                ),
                child: MdSnsText(
                  "Clear Memory",
                  color: AppColors.white,
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
