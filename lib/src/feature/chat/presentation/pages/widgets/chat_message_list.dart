import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_message_item.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/loading_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/markdown_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/message_like_copy_icon.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';

class ChatMessageList extends StatelessWidget {
  final List<ChatMessageModel> chats;
  final User? user;
  final ChatRouting? chatRouting;
  final AsyncValue asyncStream;

  const ChatMessageList({
    super.key,
    required this.chats,
    required this.user,
    required this.chatRouting,
    required this.asyncStream,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: chats.length,
            itemBuilder: (_, index) {
              return ChatMessageItem(
                message: chats[index],
                chatRouting: chatRouting,
                user: user,
              );
            },
          ),
          asyncStream.when(
            data: (line) {
              final text = line["buffer"] ?? "";
              return text.isNotEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ChatMarkdownWidget(
                          message: text.toString(),
                          name: chatRouting?.symbol ?? "TDGPT",
                          image: chatRouting?.image ?? "",
                          type: "ai", display: [
                            
                          ],
                        ),
                        SizedBox(height: 10),

                        Container(
                          width: 150,
                          child: MessageLikeCopyIcon(
                            type: "ai",
                            message: text.toString(),
                          ),
                        ),
                      ],
                    )
                  : SizedBox();
            },
            loading: () => Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [LoadingWidgetMarkdown()],
            ),
            error: (err, _) => Text("Error: $err"),
          ),
        ],
      ),
    );
  }
}
