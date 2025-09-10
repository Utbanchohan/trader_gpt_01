import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/gpt_provider.dart';


class GptChatScreen extends ConsumerStatefulWidget {
  final String chatId;
  const GptChatScreen({super.key, required this.chatId});

  @override
  ConsumerState<GptChatScreen> createState() => _GptChatScreenState();
}

class _GptChatScreenState extends ConsumerState<GptChatScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Equivalent of onMounted in Vue
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // ref.read(gptProvider.notifier).loadConversation(widget.chatId);
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _submitMessage() {
    final text = _textController.text.trim();
    if (text.isEmpty) return;

    // ref.read(gptProvider.notifier).submitMessage(
    //       chatId: widget.chatId,
    //       query: text,
    //     );

    _textController.clear();
    _scrollToBottom();
  }

  @override
  Widget build(BuildContext context) {
    final state = null;
    // ref.watch(gptProvider);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: state.conversation.isLoading && state.conversation.data!.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    controller: _scrollController,
                    itemCount: state.conversation.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      final msg = state.conversation.data![index];
                      return Align(
                        alignment: msg.type == "question"
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: msg.type == "question"
                                ? Colors.blueAccent
                                : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(msg.message),
                        ),
                      );
                    },
                  ),
          ),

          // 🔥 Trending Questions
          if (state.trendingQuestions.isNotEmpty && state.isFetchingAnswer != "start")
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: state.trendingQuestions
                    .map((q) => GestureDetector(
                          onTap: (){},
                          //  => ref
                          //     .read(gptProvider.notifier)
                          //     .submitMessage(chatId: widget.chatId, query: q),
                          child: Chip(label: Text(q)),
                        ))
                    .toList(),
              ),
            ),

          // 🔥 Input Box
          SafeArea(
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.flash_on),
                  onPressed: () {
                    // ref.read(gptProvider.notifier).toggleTrending();
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: "Ask anything about the markets...",
                      border: InputBorder.none,
                    ),
                    onSubmitted: (_) => _submitMessage(),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _submitMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
