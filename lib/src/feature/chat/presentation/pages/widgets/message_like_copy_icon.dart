import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/feedback_dto/feedback_dto.dart';
import 'package:trader_gpt/src/shared/widgets/feedback_popap.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/custom_message.dart';
import '../../../domain/repository/chat_repository.dart';

class MessageLikeCopyIcon extends ConsumerStatefulWidget {
  final String message;
  final String type;
  final String messageId;
  final String runId;

  const MessageLikeCopyIcon({
    super.key,
    required this.message,
    required this.type,
    required this.messageId,
    required this.runId,
  });

  @override
  ConsumerState<MessageLikeCopyIcon> createState() =>
      _MessageLikeCopyIconState();
}

class _MessageLikeCopyIconState extends ConsumerState<MessageLikeCopyIcon> {
  bool isLike = false;
  bool isUnlike = false;
  submit(String text, int score) async {
    if (text.isNotEmpty) {
      FeedbackDto feedBack = FeedbackDto(
        comment: text,
        key: 'user_feedback',
        messageId: widget.messageId,
        score: score,
        traceId: widget.runId,
      );
      var res = await ref.read(chatRepository).postFeedback(feedBack);
      if (res.message == "Feedback submitted successfull") {}
      if (score == 0) {
        setState(() {
          isUnlike = true;
          isLike = false;
        });
      } else {
        setState(() {
          isLike = true;
          isUnlike = false;
        });
      }
    }
  }

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
                    builder: (context) => FeedbackPopup(
                      onPressed: (val) {
                        submit(val, 1);
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: isLike ? AppColors.colo2C3754 : AppColors.fieldColor,
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
                    builder: (context) => FeedbackPopup(
                      onPressed: (val) {
                        submit(val, 0);
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: isUnlike
                        ? AppColors.colo2C3754
                        : AppColors.fieldColor,
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
