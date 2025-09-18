import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class LogoutDialog extends StatelessWidget {
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const LogoutDialog({
    Key? key,
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    
    return Dialog(
      backgroundColor: Color(0xFF0B1433), // Dark navy background
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 🔹 Logout Icon
            Image.asset(
              Assets.images.information1.path,
              height: 32.h,
              width: 30.67.sw,
            ),
            SizedBox(height: 20),

            MdSnsText(
              "Logout",
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w600,
              color: Color(0xffffffff),
              size: 18,
            ),
            SizedBox(height: 20),

            MdSnsText(
              "Are you sure you want to Logout?",
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w400,
              color: Color(0xFFB2B2B7),
              size: 16,
            ),
            const SizedBox(height: 20),

            // 🔹 Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // No Button
                SizedBox(
                  height: 43.h,
                  width: 90.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // minimumSize: const Size(80, 40),
                      backgroundColor: Color(0xFF203864),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // padding: const EdgeInsets.symmetric(
                      //   vertical: 8,
                      //   horizontal: 12,
                      // ), // 👈 Reduce internal padding
                    ),
                    onPressed: onCancel,
                    child: MdSnsText(
                      "No",
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff),
                      size: 14, // 👈 Text size smaller
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                // Yes Button
                SizedBox(
                  height: 43.h,
                  width: 90.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // minimumSize: const Size(
                      //   80,
                      //   40,
                      // ), // 👈 Minimum width & height
                      backgroundColor: const Color(0xFF0098E4), // Blue
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // padding: const EdgeInsets.symmetric(
                      //   vertical: 8,
                      //   horizontal: 8,
                      // ), // 👈 Reduce internal padding
                    ),
                    onPressed: onConfirm,
                    child: MdSnsText(
                      "Yes",
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff),
                      size: 14, // 👈 Text size smaller
                    ),
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
