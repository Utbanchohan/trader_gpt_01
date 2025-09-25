import 'package:flutter/material.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/markdown_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/message_like_copy_icon.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';

class ChatMessageItem extends StatelessWidget {
  final ChatMessageModel message;
  final ChatRouting? chatRouting;
  final User? user;

  const ChatMessageItem({
    super.key,
    required this.message,
    this.chatRouting,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    String name = message.type == "user"
        ? user?.name ?? "User"
        : chatRouting?.symbol ?? "TDGPT";
    String image = message.type == "user"
        ? user?.imgUrl ?? ""
        : chatRouting?.image ?? "";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ChatMarkdownWidget(
          message: message.message,
          name: name,
          image: image,
          type: message.type,
        ),

        SizedBox(height: 20),
        MessageLikeCopyIcon(type: message.type, message: message.message),
      ],
    );
  }
}
