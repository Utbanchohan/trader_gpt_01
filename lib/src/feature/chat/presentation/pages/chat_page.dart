import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

final chatMessagesProvider = StateProvider<List<String>>((ref) => []);

class ChatPage extends ConsumerStatefulWidget {
  ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _sendMessage(WidgetRef ref) {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      ref
          .read(chatMessagesProvider.notifier)
          .update((state) => [...state, text]);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: Image.asset(Assets.images.menu.path, width: 32, height: 32),
        title: Image.asset(Assets.images.logo.path, width: 100, height: 32),
        actions: [
          Image.asset(Assets.images.searchNormal.path, width: 32, height: 32),
        ],
      ),
      body: Column(
        children: [
          // Tabs
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "Today",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ),

          // Top Button
          Align(
            alignment: Alignment.centerRight, // Right side bubble
            child: Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                GestureDetector(
                  // onTap: onCopy,
                  child: Container(
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: Color(0xFF1A2235),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      Assets.images.copy.path,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  decoration: BoxDecoration(
                    color: Color(0xFF1A2235),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Flexible(
                    child: Text(
                      "Top Performing Stocks For Today",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF1A2235),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "📈 Top Performing Stocks (Today)",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "1. NVDA (NVIDIA)\n+5.2% → \$950.50\nAI Signal: \"Breakout on AI chip demand\"\n\n"
                      "2. SMCI (Super Micro)\n+4.8% → \$880.20\nCatalyst: Server sales beat estimates\n\n"
                      "3. TSLA (Tesla)\n+3.6% → \$265.00\nWatch: Robotaxi event hype",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.red,

                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.fieldColor,
                        ),
                        child: Image.asset(
                          "assets/images/like.png",
                          width: 14,
                          height: 14,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.fieldColor,
                        ),
                        child: Image.asset(
                          "assets/images/dislike.png",
                          width: 14,
                          height: 14,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.fieldColor,
                        ),
                        child: Image.asset(
                          "assets/images/Regenerate.png",
                          width: 14,
                          height: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Floating icons
          Spacer(),

          // Bottom Input
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.white12, width: 1)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFF1A2235),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Ask anything about the market",
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                IconButton(
                  icon: Icon(Icons.add_circle_outline, color: Colors.white70),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.white70),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.bolt, color: Colors.white70),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.cyanAccent),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
