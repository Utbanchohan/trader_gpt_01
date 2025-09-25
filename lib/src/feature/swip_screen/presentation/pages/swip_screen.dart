import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/analytics.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/chat_conversation.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/Onboarding_BottomSheet.dart';
import 'package:trader_gpt/src/feature/conversations_start/presentation/pages/conversation_start.dart';

class SwipeScreen extends ConsumerStatefulWidget {
  final ChatRouting? chatRouting;
  final int initialIndex; // 👈 extra arg

  const SwipeScreen({
    super.key,
    this.chatRouting,
    this.initialIndex = 1,
  });

  @override
  ConsumerState<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends ConsumerState<SwipeScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    bool isFirstTime = ref.read(localDataProvider).getIsFirstTime();

    int pageIndex = isFirstTime ? 0 : widget.initialIndex; 
    _pageController = PageController(initialPage: pageIndex);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      openSheet(isFirstTime);
    });
  }

  openSheet(bool isFirstTime) {
    if (isFirstTime) {
      ref.read(localDataProvider).setIsFirstTime(false);
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: AppColors.shadowColor,
        builder: (context) {
          return OnboardingBottomSheet();
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          ConversationStart(),
          ChatConversation(chatRouting: widget.chatRouting),
          AnalyticsScreen(),
        ],
      ),
    );
  }
}
