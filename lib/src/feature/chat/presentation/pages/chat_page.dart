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
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.13,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: AppColors.gradient,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.color0E1738,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: AppColors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ask anything about the market",
                      hintStyle: TextStyle(
                        color: AppColors.bluishgrey404F81,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.color091224,
                            border: Border.all(
                              color: AppColors.bluishgrey404F81,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: AppColors.color3C4E8A,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 8),

                        _ActionChip(
                          icon: Assets.images.radar2.path,
                          label: "Deep Search",
                          onTap: () {},
                        ),
                        SizedBox(width: 6),

                        // Think Button
                        _ActionChip(
                          icon: Assets.images.lampCharge.path,
                          label: "Think",
                          onTap: () {},
                        ),
                      ],
                    ),

                    // Send Button
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.color046297,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.arrow_upward_rounded,
                          color: AppColors.white,
                          size: 18,
                        ),
                        onPressed: () => _sendMessage(ref),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: Image.asset(Assets.images.menu.path, width: 40, height: 40),
        title: Image.asset(Assets.images.logo.path, width: 187, height: 35.27),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Image.asset(Assets.images.searchNormal.path, width: 20, height: 20)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(height: 10),

            MdSnsText(
              "Today",
              color: AppColors.colorB2B2B7,
              fontWeight: FontWeight.w400,
              size: 12,
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  // onTap: onCopy,
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
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.bubbleColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  // child: Flexible(
                  child: MdSnsText(
                    "Top Performing Stocks For Today",
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                    size: 16,
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
                    color: AppColors.bubbleColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MdSnsText(
                        "📈 Top Performing Stocks (Today)",
                        color: AppColors.white,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 10),
                      MdSnsText(
                        "1. NVDA (NVIDIA)\n+5.2% → \$950.50\nAI Signal: \"Breakout on AI chip demand\"\n\n"
                        "2. SMCI (Super Micro)\n+4.8% → \$880.20\nCatalyst: Server sales beat estimates\n\n"
                        "3. TSLA (Tesla)\n+3.6% → \$265.00\nWatch: Robotaxi event hype",
                        color: AppColors.white,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
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
                      SizedBox(height: 10),

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
                      SizedBox(height: 10),

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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionChip extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback onTap;

  _ActionChip({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.color091224,
          border: Border.all(color: AppColors.bluishgrey404F81),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(icon, width: 14, height: 14, color: AppColors.color3C4E8A),
            SizedBox(width: 4),
            MdSnsText(
              label,
              size: 16,
              color: AppColors.color3C4E8A,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
