import 'package:flutter/material.dart';
import 'package:trader_gpt/src/feature/analytics/analytics.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/chat_conversation.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/Onboarding_BottomSheet.dart';
import 'package:trader_gpt/src/feature/conversations_start/presentation/pages/conversation_start.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class SwipeScreen extends StatefulWidget {
  final ChatRouting? chatRouting; // 👈 argument accept karne ke liye

  const SwipeScreen({super.key, this.chatRouting});

  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  final PageController _pageController = PageController(initialPage: 1);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: AppColors.shadowColor,
        builder: (context) {
          return OnboardingBottomSheet();
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          ConversationStart(),
          ChatConversation(chatRouting: widget.chatRouting), // 👈 argument pass
          AnalyticsScreen(),
        ],
      ),
    );
  }
}
