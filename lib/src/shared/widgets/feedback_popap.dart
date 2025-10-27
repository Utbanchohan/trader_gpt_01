import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class FeedbackPopup extends StatefulWidget {
  const FeedbackPopup({super.key});

  @override
  State<FeedbackPopup> createState() => _FeedbackPopupState();
}

class _FeedbackPopupState extends State<FeedbackPopup> {
  final TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: AppColors.fieldColor,

      // 👇 Uniform padding for title (same as content & actions)
      titlePadding: const EdgeInsets.fromLTRB(20, 16, 20, 0),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MdSnsText(
            "Feedback",
            color: AppColors.white,
            variant: TextVariant.h2,
            fontWeight: TextFontWeightVariant.h1,
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.close_rounded, color: AppColors.white, size: 22),
          ),
        ],
      ),

      // 👇 Uniform horizontal padding for content
      contentPadding: const EdgeInsets.fromLTRB(20, 12, 20, 0),

      content: SizedBox(
        width: double.maxFinite,
        child: TextFormField(
          controller: _feedbackController,
          maxLines: 3,
          decoration: InputDecoration(
            hintText: "Comment (optional)",
            hintStyle: const TextStyle(color: AppColors.white),
            filled: true,

            fillColor: AppColors.black,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.color0xFFc0c0c8,
                width: 0.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppColors.color4ade80, width: 1),
            ),
          ),
        ),
      ),

      // 👇 Uniform bottom + horizontal padding for actions
      actionsPadding: const EdgeInsets.fromLTRB(20, 0, 20, 12),

      actions: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Cancel button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.fieldColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
              ),
              child: MdSnsText(
                "Cancel",
                variant: TextVariant.h3,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.color4ade80,
              ),
            ),
            const SizedBox(width: 8),
            // Submit button
            ElevatedButton(
              onPressed: () {
                // final feedback = _feedbackController.text.trim();
                // if (feedback.isNotEmpty) {
                //   Navigator.pop(context);
                // }
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.color4ade80,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
                ),
              ),
              child: MdSnsText(
                "Submit",
                variant: TextVariant.h3,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
