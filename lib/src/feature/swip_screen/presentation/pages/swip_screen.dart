import 'package:flutter/material.dart';
import 'package:trader_gpt/src/feature/analytics/analytics.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/chat_page.dart';
import 'package:trader_gpt/src/feature/conversations_start/presentation/pages/conversation_start.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';


class SwipeScreen extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 1);

  // Optional: aap yahan default ChatRouting define kar sakte ho
  final ChatRouting defaultChatRouting = ChatRouting(
    image: "",
    symbol: "",
    companyName: "",
    price: 0,
    changePercentage: 0,
    chatId: "",
    stockid: "",
    trendChart: FiveDayTrend(data: []),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          ConversationStart(), 
          ChatPage(chatRouting: defaultChatRouting),  // middle page
          AnalyticsScreen(),
        ],
      ),
    );
  }
}
