import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ConfirmationDialog extends StatelessWidget {
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const ConfirmationDialog({
    Key? key,
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0xFF0B1433),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Assets.images.information.path,
              height: 40.h,
              width: 40.sw,
            ),
            SizedBox(height: 20.h),

            MdSnsText(
              "Confirmation",
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w600,
              color: Color(0xffffffff),
              size: 18,
            ),
            SizedBox(height: 20),

            // Subtitle
            MdSnsText(
              "Are you sure you want to archive?",
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w400,
              color: Color(0xFFB2B2B7),
            ),
            const SizedBox(height: 20),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // No Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF203864), // dark grey
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: onCancel,
                  child: MdSnsText(
                    "No",
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                    size: 16,
                  ),
                ),
                const SizedBox(width: 15),

                // Yes Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0098E4), // blue
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: onConfirm,
                  child: MdSnsText(
                    "Yes",
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                    size: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
