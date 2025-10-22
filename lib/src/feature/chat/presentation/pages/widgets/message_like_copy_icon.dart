import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trader_gpt/src/shared/widgets/feedback_popap.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/custom_message.dart';

class MessageLikeCopyIcon extends StatefulWidget {
  final String message;
  final String type;

  const MessageLikeCopyIcon({
    super.key,
    required this.message,
    required this.type,
  });

  @override
  State<MessageLikeCopyIcon> createState() => _MessageLikeCopyIconState();
}

class _MessageLikeCopyIconState extends State<MessageLikeCopyIcon> {
  @override
  Widget build(BuildContext context) {
    return widget.type == "user"
        ? GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: widget.message));
              $showMessage("Copied to Clipboard");
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.bubbleColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                Assets.images.copy.path,
                width: 14,
                height: 14,
              ),
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const FeedbackPopup(),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.fieldColor,
                  ),
                  child: Image.asset(
                    Assets.images.like.path,
                    width: 14,
                    height: 14,
                  ),
                ),
              ),
              SizedBox(width: 10),

              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const FeedbackPopup(),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.fieldColor,
                  ),
                  child: Image.asset(
                    Assets.images.dislike.path,
                    width: 14,
                    height: 14,
                  ),
                ),
              ),
              SizedBox(width: 10),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.fieldColor,
                ),
                child: Image.asset(
                  Assets.images.regenerate.path,
                  width: 14,
                  height: 14,
                ),
              ),
            ],
          );
  }
}
