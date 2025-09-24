import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/work_flow_model/work_flow.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/stock_screen.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/markdown_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/message_like_copy_icon.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/setting_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/chat_provider.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/work_flow_provider.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/asking_popup_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/gradient_dialog.dart';
import 'package:trader_gpt/src/feature/side_menu/presentation/pages/side_menu.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../core/extensions/empty_stock.dart';
import '../../../../core/extensions/symbol_image.dart';
import '../../../../shared/socket/providers/stocks_price.dart';
import '../../../sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'widgets/loading_widget.dart';

// ignore: must_be_immutable
class ChatPage extends ConsumerStatefulWidget {
  ChatRouting? chatRouting;

  ChatPage({super.key, this.chatRouting});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  TextEditingController message = TextEditingController();
  TextEditingController limit = TextEditingController();
  final ScrollController _textScrollController = ScrollController();

  ScrollController sc = ScrollController();
  Stock? selectedStock;
  List<ChatMessageModel> chats = [];
  List<String> questions = [];
  dynamic asyncStream;
  bool startStream = false;
  List<String> followupQuestions = [];
  var body;
  String? chadId;
  User? user;
  bool dialogOpen = false;
  String? oldResponse;
  bool webMode = true;
  bool report = true;
  bool deepAnalysis = true;
  List<Workflow> workflows = [];
  bool isWorkFlow = false;
  bool isWorkSymbol = false;

  @override
  void initState() {
    getChatsId();
    selectedStock = _mapChatRoutingToStock(widget.chatRouting);
    getRandomQuestions(
      selectedStock!.symbol.isNotEmpty ? selectedStock!.symbol : "[symbol]",
    );
    getWorkFlows();

    super.initState();
  }

  getWorkFlows() async {
    var res = await ref.read(workFlowProviderProvider.notifier).getWorksFlows();
    if (res.workflows.isNotEmpty) {
      workflows.addAll(res.workflows);
    }
  }

  void questionDialog(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return GradientDialog(
          child: SizedBox(
            height: 400.h,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: workflows.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () async {
                    setState(() {
                      isWorkFlow = true;
                    });
                    if (widget.chatRouting == null ||
                        widget.chatRouting!.symbol.isEmpty) {
                      if (workflows[index].parameters!.length > 0 &&
                          workflows[index].parameters![0].name == "symbol") {
                        setState(() {
                          isWorkSymbol = true;
                        });
                        String description = workflows[index].displayName;

                        message.text = description;

                        message.selection = TextSelection.fromPosition(
                          TextPosition(offset: message.text.length),
                        );

                        Navigator.pop(context);
                        if (Navigator.of(context).canPop()) {
                          Navigator.of(context).pop();
                        }
                        selectedStock = await showDialog<Stock>(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return GradientDialog(child: StockScreen());
                          },
                        );
                      } else if (workflows[index].parameters!.length > 0 &&
                          workflows[index].parameters![0].name == "limit") {
                      } else {
                        String description = workflows[index].displayName;

                        message.text = description;

                        message.selection = TextSelection.fromPosition(
                          TextPosition(offset: message.text.length),
                        );

                        Navigator.pop(context);
                        if (Navigator.of(context).canPop()) {
                          Navigator.of(context).pop();
                        }
                      }
                    } else {
                      String description = workflows[index].displayName;

                      message.text = description;

                      message.selection = TextSelection.fromPosition(
                        TextPosition(offset: message.text.length),
                      );

                      Navigator.pop(context);
                      if (Navigator.of(context).canPop()) {
                        Navigator.of(context).pop();
                      }
                    }
                  },

                  child: Container(
                    margin: EdgeInsets.only(bottom: 12),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.color1B254B,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MdSnsText(
                          "/" + workflows[index].displayName,
                          color: AppColors.white,
                          variant: TextVariant.h2,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        SizedBox(height: 8),
                        MdSnsText(
                          workflows[index].description,
                          color: AppColors.color9EAAC0,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  getChatsId() async {
    if (widget.chatRouting != null && widget.chatRouting!.chatId.isNotEmpty) {
      chadId = widget.chatRouting!.chatId;
      getchats(chadId ?? "");
    } else {
      var res = await ref.read(chatRepository).chats();
      if (res.isSuccess) {
        for (int i = 0; i < res.data!.results.length; i++) {
          if (res.data!.results[i].symbol.toLowerCase() == "tdgpt") {
            chadId = res.data!.results[i].id;
            getchats(chadId ?? "");
            break;
          }
        }
      } else {
        getchats(chadId ?? "");
      }
    }
  }

  Stock _mapChatRoutingToStock(ChatRouting? routing) {
    return widget.chatRouting != null &&
            widget.chatRouting!.companyName.isNotEmpty
        ? Stock(
            avgVolume: 0,
            change: 0,
            changesPercentage: widget.chatRouting!.changePercentage,
            dayHigh: 0.0,
            dayLow: 0.0,
            earningsAnnouncement: "",
            eps: 0.0,
            exchange: "",
            fiveDayTrend: [widget.chatRouting!.trendChart],
            marketCap: 0,
            name: widget.chatRouting!.companyName,
            open: 0,
            pe: 0,
            previousClose: 0.0,
            price: widget.chatRouting!.price,
            priceAvg200: 0,
            priceAvg50: 0,
            sharesOutstanding: 0,
            stockId: widget.chatRouting!.stockid,
            symbol: widget.chatRouting!.symbol,
            timestamp: 0,
            volume: 0,
            yearHigh: 0,
            yearLow: 0.0,
            logoUrl: widget.chatRouting!.image,
            type: "",
            count: 0,
            dateHours: "",
            ticks: 0,
            primaryLogoUrl: widget.chatRouting!.image,
            secondaryLogoUrl: widget.chatRouting!.image,
            tertiaryLogoUrl: widget.chatRouting!.image,
            status: "",
            updatedFrom: "",
            country: "us",
            exchangeSortOrder: 0,
          )
        : emptyStock();
  }

  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (sc.hasClients) {
        sc.animateTo(
          sc.position.maxScrollExtent,
          duration: const Duration(milliseconds: 750),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    message.dispose();
    super.dispose();
  }

  getRandomQuestions(String symbol) async {
    var res = await ref.read(chatRepository).randomQuestions(symbol);
    if (res.isSuccess) {
      for (var ij in res.questions) {
        if (widget.chatRouting == null ||
            widget.chatRouting!.companyName.isEmpty) {
          questions.add(ij);
        } else {
          if (widget.chatRouting != null ||
              widget.chatRouting!.symbol.isNotEmpty) {
            questions.add(
              ij.replaceAll('[SYMBOL]', widget.chatRouting!.symbol),
            );
          } else {
            questions.add(ij);
          }
        }
      }
      setState(() {});
    } else {
      return false;
    }
  }

  getchats(String id) async {
    var res = await ref.read(chatRepository).getMessages(id, 1);
    if (res.isSuccess) {
      for (int i = 0; i < res.data!.messages!.length; i++) {
        chats.add(res.data!.messages![i]);
      }
      scrollToBottom();
      setState(() {});
    } else {
      return false;
    }
  }

  showDialogue(
    List<String> questions,
    List<String> relatedQuestion,
    TextEditingController message,
    int index,
  ) async {
    return await showDialog<Stock>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          backgroundColor: AppColors.primaryColor,
          insetPadding: EdgeInsets.all(0),
          contentPadding: EdgeInsets.all(0),
          content: AskingPopupWidget(
            showSheet:
                widget.chatRouting == null || widget.chatRouting!.symbol.isEmpty
                ? true
                : false,
            index: index,
            questions: questions,
            relatedQuestion: relatedQuestion,
            controller: message,
          ),
        );
      },
    );
  }

  void _sendMessage(WidgetRef ref) async {
    String userid = ref.watch(localDataProvider).getUserId;
    final text = message.text.trim();
    if (text.isNotEmpty) {
      var res = await ref
          .read(chatProviderProvider.notifier)
          .sendMessage(
            ChatMessageDto(chatId: chadId!, message: text, type: "user"),
          );
      if (res != null) {
        body = {
          "task": message.text,
          "symbol": selectedStock != null ? selectedStock!.symbol : "TDGPT",
          "symbol_name": selectedStock != null
              ? selectedStock!.name
              : "TraderGPT",
          "report": false,
          "is_web_research": false,
          "deep_search": false,
          "chat_id": chadId,
          "reply_id": "68c1d2c86d162417bca6fc8e",
          "workflow_object": null,
          "analysis_required": false,
          "is_workflow": false,
        };
        setState(() {
          if (oldResponse != null) {
            chats.add(
              ChatMessageModel(
                id: "temp",
                chatId: chadId!,
                message: oldResponse!,
                type: "ai",
                userId: userid,
                createdAt: DateTime.now(),
                updatedAt: DateTime.now(),
              ),
            );
          }
          chats.add(
            ChatMessageModel(
              id: "temp",
              chatId: chadId!,
              message: text,
              type: "user",
              userId: userid,
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
            ),
          );

          startStream = true;
        });
        scrollToBottom();
      }

      message.clear();
    }
  }

  getUser() async {
    dynamic userData = await ref.watch(localDataProvider).getUser();
    if (userData != null) {
      setState(() {
        user = User.fromJson(userData);
      });
    }
  }

  changeDialogueStatus() {
    setState(() {
      dialogOpen = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final stockManagerState = ref.watch(stocksManagerProvider);

    getUser();
    final asyncStream = startStream
        ? ref.watch(sseProvider(body))
        : const AsyncValue.data({'buffer': "", "followUp": []});

    asyncStream.whenData((data) {
      followupQuestions = data["followUp"].isNotEmpty
          ? (data["followUp"] as List<String>?) ?? []
          : [];

      if (followupQuestions.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          if (!dialogOpen) {
            oldResponse = data["buffer"];
            showDialogue(questions, followupQuestions, message, 1);
            changeDialogueStatus();
          }
        });
      }
    });

    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: SideMenu(),
      bottomNavigationBar: // ScrollController for the TextField
      AnimatedPadding(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          color: Colors.transparent,
          height: isWorkSymbol == true ? 190.h : 160.h,
          child: Column(
            children: [
              Container(
                height: isWorkSymbol == true ? 145.h : 115.h,
                margin: EdgeInsets.all(18),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: AppColors.gradient,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.color0E1738,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: message,
                          style: TextStyle(color: AppColors.white),
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          scrollController: _textScrollController,
                          onChanged: (value) {
                            _textScrollController.jumpTo(
                              _textScrollController.position.maxScrollExtent,
                            );

                            if (value.endsWith("/")) {
                              questionDialog(context);
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Ask anything about the market",
                            prefixIcon: GestureDetector(
                              onTap: () async {
                                if (widget.chatRouting == null ||
                                    widget.chatRouting!.companyName.isEmpty) {
                                  selectedStock = await showDialogue(
                                    questions,
                                    [],
                                    message,
                                    0,
                                  );
                                } else {
                                  showDialogue(questions, [], message, 0);
                                }
                              },
                              child: Image.asset(
                                Assets.images.prefixIcon.path,
                                scale: 3.3.sp,
                              ),
                            ),
                            prefixIconConstraints: BoxConstraints(
                              minWidth: 0,
                              minHeight: 0,
                            ),

                            suffixIcon: isWorkFlow == true
                                ? IconButton(
                                    icon: Icon(Icons.delete, color: Colors.red),
                                    onPressed: () {
                                      isWorkSymbol = false;
                                      isWorkFlow = false;
                                      message.clear();
                                    },
                                  )
                                : null,

                            hintStyle: TextStyle(
                              color: AppColors.bluishgrey404F81,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15.h),

                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10.r),
                      //     color: AppColors.bubbleColor,
                      //   ),
                      //   height: 30.h,
                      //   width: 140.w,

                      //   child: TextField(
                      //     controller: limit,
                      //     style: TextStyle(color: AppColors.white),
                      //     keyboardType: TextInputType.multiline,
                      //     maxLines: null,
                      //     scrollController: _textScrollController,
                      //     decoration: InputDecoration(
                      //       border: InputBorder.none,
                      //       hintText: "",
                      //       prefixIconConstraints: BoxConstraints(
                      //         minWidth: 0,
                      //         minHeight: 0,
                      //       ),
                      //       hintStyle: TextStyle(
                      //         color: AppColors.bluishgrey404F81,
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      isWorkSymbol == true
                          ? Container(
                              padding: EdgeInsets.all(5.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.all(color: AppColors.redFF3B3B),
                              ),
                              child: MdSnsText(
                                "Symbol | ${selectedStock!.symbol}",
                                variant: TextVariant.h2,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors.fieldTextColor,
                              ),
                            )
                          : SizedBox(),
                      SizedBox(height: 15.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PopupMenuButton<String>(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: AppColors.bubbleColor,
                            onSelected: (value) {
                              print("Selected: $value");
                            },
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                enabled: false,
                                child: SettingsCard(
                                  icon: Icons.public,
                                  title: "Web Mode",
                                  value: webMode,
                                  onChanged: (val) =>
                                      setState(() => webMode = val),
                                ),
                              ),
                              PopupMenuDivider(
                                color: AppColors.white.withOpacity(0.3),
                              ),
                              PopupMenuItem(
                                enabled: false,
                                child: SettingsCard(
                                  icon: Icons.assignment,
                                  title: "Report",
                                  value: report,
                                  onChanged: (val) =>
                                      setState(() => report = val),
                                ),
                              ),
                              PopupMenuDivider(
                                color: AppColors.white.withOpacity(0.3),
                              ),
                              PopupMenuItem(
                                enabled: false,
                                child: SettingsCard(
                                  icon: Icons.analytics,
                                  title: "Deep Analysis",
                                  value: deepAnalysis,
                                  onChanged: (val) =>
                                      setState(() => deepAnalysis = val),
                                ),
                              ),
                            ],
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 35.h,
                              width: 35.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.color091224,
                                border: Border.all(
                                  color: AppColors.bluishgrey404F81,
                                  width: 1.5,
                                ),
                              ),
                              child: Image.asset(
                                Assets.images.textfieldicon3.path,
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                height: 36.h,
                                width: 36.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.bubbleColor,
                                ),
                                child: Image.asset(
                                  Assets.images.textfieldicon.path,
                                ),
                              ),
                              SizedBox(width: 6.w),
                              Container(
                                padding: EdgeInsets.all(12),
                                height: 36.h,
                                width: 36.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.bubbleColor,
                                ),
                                child: Image.asset(
                                  Assets.images.textfieldicon4.path,
                                ),
                              ),
                              SizedBox(width: 6.w),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      backgroundColor: AppColors.primaryColor,
      appBar:
          widget.chatRouting == null || widget.chatRouting!.companyName.isEmpty
          ? AppBar(
              scrolledUnderElevation: 0,
              centerTitle: false,
              backgroundColor: AppColors.primaryColor,
              elevation: 0,
              leading: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Image.asset(
                      Assets.images.menu.path,
                      width: 40,
                      height: 40,
                    ),
                  );
                },
              ),
              title: Image.asset(
                Assets.images.logo.path,
                width: 187,
                height: 35.27,
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Image.asset(
                    Assets.images.searchNormal.path,
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            )
          : AppBar(
              scrolledUnderElevation: 0,
              centerTitle: false,
              backgroundColor: AppColors.primaryColor,
              elevation: 0,
              titleSpacing: 0,
              leading: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Image.asset(
                      Assets.images.menu.path,
                      width: 40,
                      height: 40,
                    ),
                  );
                },
              ),
              title: Row(
                children: [
                  SizedBox(
                    width: 35,

                    height: 35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SvgPicture.network(
                        getItemImage(
                          ImageType.stock,
                          widget.chatRouting!.symbol,
                        ),
                        fit: BoxFit.cover,
                        placeholderBuilder: (context) =>
                            SizedBox(width: 35, height: 35, child: SizedBox()),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          MdSnsText(
                            "#${widget.chatRouting!.symbol}",
                            variant: TextVariant.h2,
                            fontWeight: TextFontWeightVariant.h1,

                            color: AppColors.white,
                          ),
                          SizedBox(width: 4),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 3,
                            child: MdSnsText(
                              " " +
                                  widget.chatRouting!.companyName!
                                      .split("-")
                                      .first
                                      .trim(),

                              color: AppColors.colorB2B2B7,
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.white,

                            size: 20.sp,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MdSnsText(
                            stockManagerState[widget.chatRouting!.stockid] !=
                                        null &&
                                    stockManagerState[widget
                                                .chatRouting!
                                                .stockid]!
                                            .price >
                                        0
                                ? stockManagerState[widget
                                          .chatRouting!
                                          .stockid]!
                                      .price
                                      .toStringAsFixed(2)
                                : widget.chatRouting!.price.toStringAsFixed(2),
                            color: AppColors.white,
                            variant: TextVariant.h3,
                          ),
                          SizedBox(width: 6),
                          Icon(
                            widget.chatRouting!.changePercentage
                                    .toString()
                                    .contains("-")
                                ? Icons.arrow_drop_down
                                : Icons.arrow_drop_up,
                            color:
                                widget.chatRouting!.changePercentage
                                    .toString()
                                    .contains("-")
                                ? AppColors.redFF3B3B
                                : AppColors.color06D54E,
                            size: 20,
                          ),
                          MdSnsText(
                            stockManagerState[widget.chatRouting!.stockid] !=
                                        null &&
                                    stockManagerState[widget
                                                .chatRouting!
                                                .stockid]!
                                            .price >
                                        0
                                ? " ${(stockManagerState[widget.chatRouting!.stockid]!.price - widget.chatRouting!.price).toStringAsFixed(2).replaceAll("-", "")}%"
                                : " ${widget.chatRouting!.changePercentage.toStringAsFixed(2).replaceAll("-", "")}%",
                            color:
                                widget.chatRouting!.changePercentage
                                    .toString()
                                    .contains("-")
                                ? AppColors.redFF3B3B
                                : AppColors.color06D54E,
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    context.pushNamed(
                      AppRoutes.analytics.name,
                      extra: widget.chatRouting,
                    );
                  },
                  child: Container(
                    width: 40.w,
                    height: 71.h,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.images.shapeAngle.path),
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      Assets.images.analytics.path,
                      width: 25.w,
                      height: 21.h,
                    ),
                  ),
                ),
              ],
            ),
      body: SingleChildScrollView(
        // controller: sc,
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                String name = chats[index].type != "user"
                    ? widget.chatRouting == null ||
                              widget.chatRouting!.symbol.isEmpty
                          ? "TDGPT"
                          : widget.chatRouting!.symbol
                    : user!.name;
                String image = chats[index].type != "user"
                    ? widget.chatRouting == null ||
                              widget.chatRouting!.image.isEmpty
                          ? ""
                          : widget.chatRouting!.image
                    : user!.imgUrl;
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,

                      // mainAxisAlignment: chats[index].type == "user"
                      // ? MainAxisAlignment.end
                      // : MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ChatMarkdownWidget(
                              key: ValueKey(chats[index].id),
                              message: chats[index].message,
                              name: name,
                              image: image,
                              type: chats[index].type,
                              display:
                                  chats[index].displayable != null &&
                                      chats[index]
                                          .displayable!
                                          .Display
                                          .isNotEmpty
                                  ? chats[index].displayable!.Display
                                  : [],
                            ),
                            SizedBox(
                              height: chats[index].type != "user" ? 10 : 10,
                            ),
                            MessageLikeCopyIcon(
                              type: chats[index].type,
                              message: chats[index].message,
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                  ],
                );
              },
            ),
            asyncStream.when(
              data: (line) {
                final text = line["buffer"] ?? "";
                if (text.isNotEmpty) {}

                return text.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ChatMarkdownWidget(
                            key: ValueKey(463672774785),
                            message: text.toString(),
                            name:
                                widget.chatRouting == null ||
                                    widget.chatRouting!.symbol.isEmpty
                                ? "TDGPT"
                                : widget.chatRouting!.symbol,
                            image:
                                widget.chatRouting == null ||
                                    widget.chatRouting!.image.isEmpty
                                ? ""
                                : widget.chatRouting!.image,
                            type: "ai",
                            display: [],
                          ),
                          SizedBox(height: 10),

                          Container(
                            width: 150,
                            child: MessageLikeCopyIcon(
                              type: "ai",
                              message: text.toString(),
                            ),
                          ),
                        ],
                      )
                    : SizedBox();
              },

              loading: () => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [LoadingWidgetMarkdown()],
              ),
              error: (err, _) => Center(child: Text("Error: $err")),
            ),
          ],
        ),
      ),
    );
  }
}
