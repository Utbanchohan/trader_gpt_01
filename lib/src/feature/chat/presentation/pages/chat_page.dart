import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

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
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF00FF9D), // greenish
              Color(0xFF007BFF), // bluish
              Color(0xFF8A2BE2), // purple
            ],
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF0E1420),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              // Plus Button
              CircleAvatar(
                radius: 18,
                backgroundColor: const Color(0xFF1A2235),
                child: const Icon(Icons.add, color: Colors.white70),
              ),
              const SizedBox(width: 8),

              // Expanded TextField (Hint Only)
              Expanded(
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Ask anything about the market",
                    hintStyle: TextStyle(color: Colors.white38),
                  ),
                ),
              ),

              // Deep Search Button
              _ActionChip(icon: Icons.sync, label: "Deep Search", onTap: () {}),
              const SizedBox(width: 6),

              // Think Button
              _ActionChip(
                icon: Icons.lightbulb_outline,
                label: "Think",
                onTap: () {},
              ),
              const SizedBox(width: 8),

              // Send Button
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue.shade700,
                child: const Icon(Icons.arrow_upward, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
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
            child: MdSnsText(
              "Today",
              color: AppColors.colorB2B2B7,
              fontWeight: FontWeight.w400,
              size: 12,
            ),
          ),

          // Top Button
          Row(
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
                // child: Flexible(
                  child: 
                  Text(
                    "Top Performing Stocks For Today",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  // ),
                ),
              ),
            ],
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
                         Assets.images.like.path,
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
        ],
      ),
    );
  }
}

class _ActionChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionChip({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF1A2235),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white24),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white54, size: 16),
            const SizedBox(width: 4),
            Text(
              label,
              style: const TextStyle(color: Colors.white70, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
