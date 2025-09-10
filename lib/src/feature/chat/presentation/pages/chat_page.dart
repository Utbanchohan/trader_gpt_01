import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      backgroundColor:  Color(0xFF0E1420),
      appBar: AppBar(
        backgroundColor:  Color(0xFF0E1420),
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.transparent,
              child: Icon(Icons.waves, color: Colors.cyanAccent, size: 28),
            ),
             SizedBox(width: 8),
             Text(
              "TradersGPT",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon:  Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Tabs
          Container(
            padding:  EdgeInsets.symmetric(vertical: 8),
            child:  Text(
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
                    padding:  EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: Color(0xFF1A2235),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.copy, color: Colors.white70, size: 18),
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
                      style:  TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
           SizedBox(height: 20),

          Container(
            padding:  EdgeInsets.all(16),
            decoration: BoxDecoration(
              color:  Color(0xFF1A2235),
              borderRadius: BorderRadius.circular(16),
            ),
            child:  Column(
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

          // Floating icons
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon:  Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.white54,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon:  Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white54,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon:  Icon(Icons.share_outlined, color: Colors.white54),
              ),
            ],
          ),

           Spacer(),

          // Bottom Input
          Container(
            padding:  EdgeInsets.all(12),
            decoration:  BoxDecoration(
              border: Border(top: BorderSide(color: Colors.white12, width: 1)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding:  EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color:  Color(0xFF1A2235),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:  TextField(
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
                  icon:  Icon(
                    Icons.add_circle_outline,
                    color: Colors.white70,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon:  Icon(Icons.search, color: Colors.white70),
                  onPressed: () {},
                ),
                IconButton(
                  icon:  Icon(Icons.bolt, color: Colors.white70),
                  onPressed: () {},
                ),
                IconButton(
                  icon:  Icon(Icons.send, color: Colors.cyanAccent),
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
