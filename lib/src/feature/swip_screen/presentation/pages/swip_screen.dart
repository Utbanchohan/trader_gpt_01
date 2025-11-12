import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/analytics.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/chat_conversation.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/chat_page.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/Onboarding_BottomSheet.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_app_bar.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/conversation_chat_app_bar.dart';
import 'package:trader_gpt/src/feature/conversations_start/presentation/pages/conversation_start.dart';
import 'package:trader_gpt/src/feature/side_menu/presentation/pages/side_menu.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../sign_in/domain/model/sign_in_response_model/login_response_model.dart';

class SwipeScreen extends ConsumerStatefulWidget {
  final ChatRouting? chatRouting;
  final int initialIndex;
  final String question;

  const SwipeScreen({
    super.key,
    this.chatRouting,
    this.initialIndex = 1,
    required this.question,
  });

  @override
  ConsumerState<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends ConsumerState<SwipeScreen> {
  late PageController _pageController;
  List<ChatHistory> convo = [];
  List<Stock> stocks = [];
  bool isSearching = false;
  TextEditingController search = TextEditingController();
  int pgeIndex = 0;
  User? userModel;

  @override
  void initState() {
    super.initState();
    getChats();
    getStocks();
    bool isFirstTime = ref.read(localDataProvider).getIsFirstTime();
    int pageIndex = isFirstTime ? 0 : widget.initialIndex;
    pgeIndex = pageIndex;
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

  getUser() async {
    dynamic userData = await ref.watch(localDataProvider).getUser();
    if (userData != null) {
      setState(() {
        userModel = User.fromJson(userData);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    getUser();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: SideMenu(),
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        centerTitle: false,
        elevation: 0,
        titleSpacing: 0,
        bottom: PreferredSize(
          preferredSize: Size(
            double.infinity,
            _pageController.hasClients
                ? pgeIndex == 0
                      ? 0.h
                      : pgeIndex == 1
                      ? 60.h
                      : 65.h
                : 0.h,
          ),
          child: _pageController.hasClients
              ? pgeIndex == 0
                    ? SizedBox()
                    : pgeIndex == 1
                    ? widget.chatRouting != null &&
                              widget.chatRouting!.symbol.isNotEmpty
                          ? ConversationChatAppBar(
                              chatRouting: widget.chatRouting,
                              onPressed: () {
                                _pageController.jumpToPage(2);
                              },
                            )
                          : ChatAppBar()
                    : pgeIndex == 2
                    ? PreferredSize(
                        preferredSize: Size.fromHeight(75.h),
                        child: AppBar(
                          automaticallyImplyLeading: false,
                          backgroundColor: AppColors.primaryColor,
                          elevation: 0,
                          flexibleSpace: SafeArea(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _pageController.jumpToPage(1);
                                      },
                                      child: Container(
                                        width: 40.w,
                                        height: 71.h,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              Assets.images.shapeRightSide.path,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.all(15),
                                        child: Image.asset(
                                          Assets.images.message.path,
                                          width: 25.w,
                                          height: 21.h,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                Assets.images.analytics.path,
                                                width: 20.w,
                                                height: 20,
                                              ),

                                              SizedBox(width: 6),
                                              MdSnsText(
                                                "ANALYTICS",
                                                color: AppColors.white,
                                                fontWeight:
                                                    TextFontWeightVariant.h4,
                                                variant: TextVariant.h3,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : SizedBox()
              : SizedBox(),
        ),
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset(
                Assets.images.menu.path,
                width: 28,
                height: 38,
              ),
            );
          },
        ),
        title: Image.asset(
          Assets.images.appLogo.path,
          height: 30.h,
          width: 121.96.w,
        ),
        actions: [
          InkWell(
            onTap: () {
              context.pushNamed(AppRoutes.myProfileScreen.name);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ClipOval(
                child: userModel != null && userModel!.imgUrl.isNotEmpty
                    ? Image.network(
                        userModel!.imgUrl,
                        height: 40.h,
                        width: 40.h,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            Assets.images.placeholderimage.path,
                            height: 40.h,
                            width: 40.h,
                            fit: BoxFit.cover,
                          );
                        },
                      )
                    : Image.asset(
                        Assets.images.placeholderimage.path,
                        height: 40.h,
                        width: 40.h,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
        ],
      ),

      body: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        onPageChanged: (index) {
          setState(() {
            pgeIndex = index;
          });
        },
        itemBuilder: (context, index) {
          if (index == 0) return ConversationStart();
          if (index == 1)
            return ChatConversation(
              chatRouting: widget.chatRouting,
              initialMessage: widget.question,
            );
          if (index == 2 && convo.isNotEmpty && stocks.isNotEmpty)
            return AnalyticsScreen(chatRouting: widget.chatRouting);

          return SizedBox(); // fallback
        },
      ),

      //      PageView(
      //   controller: _pageController,
      //   onPageChanged: (index) {
      //     setState(() {
      //       pgeIndex = index;
      //     });
      //   },
      //   children: [
      //     ConversationStart(),
      //     // convo != null && convo.isNotEmpty && stocks.isNotEmpty
      //     //     ?
      //     ChatConversation(
      //       chatRouting: widget.chatRouting,
      //       initialMessage: widget.question,
      //     ),
      //     // :
      //     // ChatPage(chatRouting: widget.chatRouting),
      //     if (convo != null && convo.isNotEmpty && stocks.isNotEmpty)
      //       AnalyticsScreen(chatRouting: widget.chatRouting),
      //   ],
      // ),
    );
  }
}
