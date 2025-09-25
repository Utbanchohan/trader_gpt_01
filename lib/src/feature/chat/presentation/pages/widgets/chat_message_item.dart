import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/markdown_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/message_like_copy_icon.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/loading_widget.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';

class ChatMessagesView extends StatelessWidget {
  final List<ChatMessageModel> chats;
  final User? user;
  final ChatRouting? chatRouting;
  final AsyncValue asyncStream;

  const ChatMessagesView({
    super.key,
    required this.chats,
    this.user,
    this.chatRouting,
    required this.asyncStream,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Existing chat messages
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: chats.length,
            itemBuilder: (context, index) {
              String name = chats[index].type != "user"
                  ? chatRouting == null || chatRouting!.symbol.isEmpty
                        ? "TDGPT"
                        : chatRouting!.symbol
                  : user!.name;
              String image = chats[index].type != "user"
                  ? chatRouting == null || chatRouting!.image.isEmpty
                        ? ""
                        : chatRouting!.image
                  : user!.imgUrl;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ChatMarkdownWidget(
                    message: chats[index].message,
                    name: name,
                    image: image,
                    type: chats[index].type,
                    display: [],
                  ),

                  MessageLikeCopyIcon(
                    type: chats[index].type,
                    message: chats[index].message,
                  ),
                   SizedBox(height: 10),
                ],
              );
            },
          ),

          // Async Stream (AI messages)
          asyncStream.when(
            data: (line) {
              final text = line["buffer"] ?? "";
              final followUp = line["followUp"] ?? [];

              return text.isNotEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ChatMarkdownWidget(
                          message: text.toString(),
                          name: chatRouting?.symbol ?? "TDGPT",
                          image: chatRouting?.image ?? "",
                          type: "ai",
                          display: [],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 150,
                          child: MessageLikeCopyIcon(
                            type: "ai",
                            message: text.toString(),
                          ),
                        ),
                        if (followUp.isNotEmpty)
                          ...List.generate(followUp.length, (i) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: ChatMarkdownWidget(
                                message: followUp[i],
                                name: chatRouting?.symbol ?? "TDGPT",
                                image: chatRouting?.image ?? "",
                                type: "ai",
                                display: [],
                              ),
                            );
                          }),
                      ],
                    )
                  : const SizedBox();
            },
            loading: () => Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [LoadingWidgetMarkdown()],
            ),
            error: (err, _) => Text("Error: $err"),
          ),
        ],
      ),
    );
  }
}
