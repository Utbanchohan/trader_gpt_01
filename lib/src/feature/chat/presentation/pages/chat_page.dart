import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/work_flow_model/work_flow.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/stock_screen.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_app_bar.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_bottom_bar.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_message_list.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/chat_provider.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/work_flow_provider.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/asking_popup_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/gradient_dialog.dart';
import 'package:trader_gpt/src/feature/side_menu/presentation/pages/side_menu.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ChatPage extends ConsumerStatefulWidget {
  ChatRouting? chatRouting;

  ChatPage({super.key, this.chatRouting});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  // controllers
  final TextEditingController message = TextEditingController();
  final TextEditingController limit = TextEditingController();
  final ScrollController _textScrollController = ScrollController();
  final ScrollController sc = ScrollController();

  // states
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
        : Stock(
            avgVolume: 0,
            change: 0,
            changesPercentage: 0,
            dayHigh: 0.0,
            dayLow: 0.0,
            earningsAnnouncement: "",
            eps: 0.0,
            exchange: "",
            fiveDayTrend: [],
            marketCap: 0,
            name: "",
            open: 0,
            pe: 0,
            previousClose: 0.0,
            price: 0,
            priceAvg200: 0,
            priceAvg50: 0,
            sharesOutstanding: 0,
            stockId: "",
            symbol: "",
            timestamp: 0,
            volume: 0,
            yearHigh: 0,
            yearLow: 0.0,
            logoUrl: "",
            type: "",
            count: 0,
            dateHours: "",
            ticks: 0,
            primaryLogoUrl: "",
            secondaryLogoUrl: "",
            tertiaryLogoUrl: "",
            status: "",
            updatedFrom: "",
            country: "us",
            exchangeSortOrder: 0,
          );
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
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: true,
      drawer: SideMenu(),
      appBar: ChatAppBar(),
      body: ChatMessageList(
        chats: chats,
        user: user,
        chatRouting: widget.chatRouting,
        asyncStream: asyncStream,
      ),
      bottomNavigationBar: ChatBottomBar(
        messageController: message,
        limitController: limit,
        textScrollController: _textScrollController,
        isWorkFlow: isWorkFlow,
        isWorkSymbol: isWorkSymbol,
        selectedStock: selectedStock,
        webMode: webMode,
        report: report,
        deepAnalysis: deepAnalysis,
        onSend: () => _sendMessage(ref),
        onPrefixTap: () async {
          if (widget.chatRouting == null ||
              widget.chatRouting!.companyName.isEmpty) {
            selectedStock = await showDialogue(questions, [], message, 0);
          } else {
            showDialogue(questions, [], message, 0);
          }
        },
        onDeleteWorkflow: () {
          isWorkSymbol = false;
          isWorkFlow = false;
          message.clear();
        },
        onSlashDetected: (ctx) => questionDialog(ctx),
        onWebModeChanged: (val) => setState(() => webMode = val),
        onReportChanged: (val) => setState(() => report = val),
        onDeepAnalysisChanged: (val) => setState(() => deepAnalysis = val),
      ),
    );
  }
}
