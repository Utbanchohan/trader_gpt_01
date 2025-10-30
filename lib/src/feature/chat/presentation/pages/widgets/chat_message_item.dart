import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/markdown_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/message_like_copy_icon.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/loading_widget.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';

class ChatMessagesView extends StatelessWidget {
  final ChatMessageModel chats;
  final User? user;
  final ChatRouting? chatRouting;

  const ChatMessagesView({
    super.key,
    required this.chats,
    this.user,
    this.chatRouting,
  });

  @override
  Widget build(BuildContext context) {
    String name = chats.type != "user"
        ? chatRouting == null || chatRouting!.symbol.isEmpty
              ? "TDGPT"
              : chatRouting!.symbol
        : user!.name;
    String image = chats.type != "user"
        ? chatRouting == null || chatRouting!.image.isEmpty
              ? ""
              : chatRouting!.image
        : user!.imgUrl;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ChatMarkdownWidget(
          message: chats.message,
          name: name,
          image: image,
          symbolType: chatRouting?.type ?? "",
          type: chats.type,
          display:
              chats.displayable != null && chats.displayable!.Display.isNotEmpty
              ? chats.displayable!.Display
              : [],
          messageId: chats.chatId,
        ),
      ],
    );
  }
}
