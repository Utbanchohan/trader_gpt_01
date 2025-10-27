import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/analytics.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/chat_conversation.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/chat_page.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/Onboarding_BottomSheet.dart';
import 'package:trader_gpt/src/feature/conversations_start/presentation/pages/conversation_start.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

class SwipeScreen extends ConsumerStatefulWidget {
  final ChatRouting? chatRouting;
  final int initialIndex;

  const SwipeScreen({super.key, this.chatRouting, this.initialIndex = 1});

  @override
  ConsumerState<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends ConsumerState<SwipeScreen> {
  late PageController _pageController;
  List<ChatHistory> convo = [];
  List<Stock> stocks = [];

  @override
  void initState() {
    super.initState();
    getChats();
    getStocks();
    bool isFirstTime = ref.read(localDataProvider).getIsFirstTime();
    int pageIndex = isFirstTime ? 0 : widget.initialIndex;
    _pageController = PageController(initialPage: pageIndex);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      openSheet(isFirstTime);
    });
  }

  getChats() async {
    var res = await ref.read(chatRepository).chats();
    if (res.isSuccess != null && res.isSuccess!) {
      // make a set of existing symbols for O(1) lookup

      for (final chat in res.data!.results) {
        if (chat.symbol.toLowerCase() != "tdgpt") {
          convo.add(chat);
        }
      }

      setState(() {});
    }
  }

  getStocks() async {
    var res = await ref.read(localDataProvider).getStocks();
    if (res != null) {
      for (var stock in res) {
        stocks.add(Stock.fromJson(stock));
      }
    }
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
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            ConversationStart(),
            convo != null && convo.isNotEmpty && stocks.isNotEmpty
                ? ChatConversation(
                    chatRouting: widget.chatRouting,
                    initialMessage: '',
                  )
                : ChatPage(chatRouting: widget.chatRouting),
            if (convo != null && convo.isNotEmpty && stocks.isNotEmpty)
              AnalyticsScreen(chatRouting: widget.chatRouting),
          ],
        ),
      ),
    );
  }
}
