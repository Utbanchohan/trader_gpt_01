import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/extensions/empty_stock.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/company_analysis_dto/company_analysis_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/work_flow_model/work_flow.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_bottom_bar.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_message_item.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/conversation_chat_app_bar.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/markdown_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/message_like_copy_icon.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/welcome_widget.dart'
    show WelcomeWidget;
import 'package:trader_gpt/src/feature/chat/presentation/provider/chat_provider.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/work_flow_provider.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/asking_popup_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/gradient_dialog.dart';
import 'package:trader_gpt/src/feature/side_menu/presentation/pages/side_menu.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../shared/widgets/loading_widget.dart';
import '../../../analytics/Presentation/provider/analytics_provider/analytics_provider.dart';
import '../../../analytics/data/dto/overview_dto/overview_dto.dart';
import '../../../analytics/domain/model/overview_model/overview_model.dart';
import '../../../sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import '../../domain/model/updates_questions_model/updates_questions_model.dart';
import 'widgets/loading_widget.dart';

class ChatConversation extends ConsumerStatefulWidget {
  ChatRouting? chatRouting;
  final String initialMessage;

  ChatConversation({super.key, this.chatRouting, required this.initialMessage});

  @override
  ConsumerState<ChatConversation> createState() => _ChatConversationState();
}

class _ChatConversationState extends ConsumerState<ChatConversation> {
  TextEditingController message = TextEditingController();
  final ScrollController _textScrollController = ScrollController();
  final TextEditingController limit = TextEditingController();

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
  List<String> oldDisplays = [];
  bool? webMode;
  bool? report;
  bool? deepAnalysis;
  List<Workflow> workflows = [];
  Workflow? selectedWorkFlow;

  bool isWorkFlow = false;
  bool isWorkLimit = false;
  final FocusNode messageFocus = FocusNode();

  bool isWorkSymbol = false;
  int chatPage = 1;
  bool boolLoadMoreLoader = false;
  StockResponse? stockResponse;
  List<AnalysisTask> updatesAskQuestions = [];

  @override
  void initState() {
    message.text = widget.initialMessage;
    getChatsId();
    getUser();
    selectedStock = _mapChatRoutingToStock(widget.chatRouting);
    if (selectedStock!.symbol.isNotEmpty) {
      getRandomQuestions(selectedStock!.symbol);
    }
    getWorkFlows();
    sc.addListener(() {
      if (sc.position.pixels <= sc.position.minScrollExtent) {
        loadMore();
      }
    });

    super.initState();
  }

  loadMore() {
    chatPage++;
    loadChats(chadId ?? "", chatPage);
  }

  loadChats(String id, int page) async {
    try {
      boolLoadMoreLoader = true;
      var res = await ref.read(chatRepository).getMessages(id, page);
      if (res.isSuccess != null && res.isSuccess!) {
        boolLoadMoreLoader = false;

        for (int i = res.data!.messages!.length - 1; i >= 0; i--) {
          chats.insert(0, res.data!.messages![i]);
        }
      } else {
        boolLoadMoreLoader = false;
        return false;
      }
    } catch (e) {
      boolLoadMoreLoader = false;
    } finally {
      boolLoadMoreLoader = false;
    }
  }

  getWorkFlows() async {
    var res = await ref.read(workFlowProviderProvider.notifier).getWorksFlows();
    if (res.workflows.isNotEmpty) {
      for (var ij in res.workflows) {
        if (widget.chatRouting!.type == "crypto") {
          if (ij.isStock != null && ij.isStock == false) {
            workflows.add(ij);
          }
        } else {
          if (ij.isStock != null && ij.isStock == true) {
            workflows.add(ij);
          }
        }
      }
    }
  }

  void _setMessage(String description) {
    message.text = description;
    message.selection = TextSelection.fromPosition(
      TextPosition(offset: message.text.length),
    );
  }

  void _closeDialogs() {
    Navigator.pop(context);
    // if (Navigator.of(context).canPop()) {
    //   Navigator.of(context).pop();
    // }
  }

  Future<void> _handleWorkflowSelection(int index) async {
    final workflow = workflows[index];
    final params = workflow.parameters ?? [];

    if (params.isNotEmpty && params.first.name == "symbol") {
      setState(() {
        isWorkFlow = true;
        isWorkSymbol = true;
        isWorkLimit = false;
      });

      String messageText = workflow.query.replaceAll(
        "{symbol}",
        selectedStock!.symbol,
      );
      _setMessage(messageText);
      _closeDialogs();
      selectedWorkFlow = workflow;
    } else if (params.isNotEmpty && params.first.name == "limit") {
      setState(() {
        isWorkFlow = true;
        isWorkLimit = true;
        isWorkSymbol = false;
      });
      String messageText = workflow.query.replaceAll(
        "{symbol}",
        selectedStock!.symbol,
      );
      _setMessage(messageText);
      selectedWorkFlow = workflow;
      _closeDialogs();
    } else {
      setState(() {
        isWorkFlow = true;
        isWorkSymbol = false;
        isWorkLimit = false;
      });
      String messageText = workflow.query.replaceAll(
        "{symbol}",
        selectedStock!.symbol,
      );
      _setMessage(messageText);
      selectedWorkFlow = workflow;
      _closeDialogs();
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
                Container(
                  height: 410.h,
                  width: MediaQuery.sizeOf(context).width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: workflows.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () async {
                          _handleWorkflowSelection(index);
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
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // 🔹 Helper widget — your original list untouched
  Widget buildWorkflowList(BuildContext context, List workflows) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: workflows.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () async {
                _handleWorkflowSelection(index);
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(10),
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
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
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
      ],
    );
  }

  getChatsId() async {
    if (widget.chatRouting != null && widget.chatRouting!.chatId.isNotEmpty) {
      chadId = widget.chatRouting!.chatId;
      getchats(chadId ?? "", chatPage);
    }
  }

  Stock _mapChatRoutingToStock(ChatRouting? routing) {
    return widget.chatRouting != null &&
            widget.chatRouting!.companyName.isNotEmpty
        ? Stock(
            pctChange: widget.chatRouting!.changePercentage,

            exchange: "",
            fiveDayTrend: [widget.chatRouting!.trendChart],
            marketCap: 0,
            companyName: widget.chatRouting!.companyName,

            previousClose: 0.0,
            price: widget.chatRouting!.price,

            stockId: widget.chatRouting!.stockid,
            symbol: widget.chatRouting!.symbol,

            type: "",
          )
        : emptyStock();
  }

  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (sc.hasClients && mounted) {
        try {
          sc.jumpTo(sc.position.maxScrollExtent);
        } catch (e) {
          debugPrint("Scroll error: $e");
        }
      }
    });
  }

  // void scrollToBottom() {
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     if (sc.hasClients) {
  //       sc.animateTo(
  //         sc.position.maxScrollExtent,
  //         duration: const Duration(milliseconds: 750),
  //         curve: Curves.easeOut,
  //       );
  //     }
  //   });
  // }

  @override
  void dispose() {
    message.dispose();
    sc.dispose();
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
            questions.add(ij);
          } else {
            questions.add(ij);
          }
        }
      }
      if (mounted) {
        setState(() {});
      }
    } else {
      return false;
    }
  }

  getchats(String id, int page) async {
    var res = await ref.read(chatRepository).getMessages(id, page);
    if (res.isSuccess != null && res.isSuccess!) {
      for (int i = 0; i < res.data!.messages!.length; i++) {
        chats.add(res.data!.messages![i]);
      }
      scrollToBottom();
      if (mounted) {
        setState(() {});
      }
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
        return Container(
          margin: EdgeInsets.only(top: 80.h),
          child: AlertDialog(
            alignment: Alignment.center,
            backgroundColor: AppColors.primaryColor,
            insetPadding: EdgeInsets.all(0),
            contentPadding: EdgeInsets.all(0),
            content: AskingPopupWidget(
              showSheet:
                  widget.chatRouting == null ||
                      widget.chatRouting!.symbol.isEmpty
                  ? true
                  : false,
              index: index,
              questions: questions,
              relatedQuestion: relatedQuestion,
              controller: message,
            ),
          ),
        );
      },
    );
  }

  void _sendMessage(WidgetRef ref) async {
    final userid = ref.read(localDataProvider).getUserId;
    final text = message.text.trim();

    if (text.isEmpty || chadId == null) return;

    final sendText = text;
    message.clear();

    if (mounted) FocusScope.of(context).requestFocus(messageFocus);
    if (mounted) {
      setState(() {
        if (oldResponse != null) {
          chats.add(
            ChatMessageModel(
              id: DateTime.now().microsecondsSinceEpoch.toString(),
              chatId: chadId!,
              message: oldResponse!,
              type: "ai",
              userId: userid,
              displayable: Displayable(Display: oldDisplays),
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
            ),
          );
        }

        chats.add(
          ChatMessageModel(
            id: DateTime.now().microsecondsSinceEpoch.toString(),
            chatId: chadId!,
            message: sendText,
            type: "user",
            userId: userid,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );

        startStream = true;
        isWorkFlow = false;
        isWorkSymbol = false;
        isWorkLimit = false;
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => scrollToBottom());

    WorkflowObject? workflowObj;
    if (isWorkFlow && selectedWorkFlow != null) {
      workflowObj = WorkflowObject(
        isStock: selectedWorkFlow!.isStock ?? false,
        name: selectedWorkFlow!.name,
        displayName: selectedWorkFlow!.displayName,
        description: selectedWorkFlow!.description ?? "",
        query: selectedWorkFlow!.query ?? "",
        companyName: selectedStock?.companyName ?? "TraderGPT",
        parameters:
            (selectedWorkFlow!.parameters != null &&
                selectedWorkFlow!.parameters!.isNotEmpty)
            ? [
                WorkflowParameter(
                  name: selectedWorkFlow!.parameters![0].name,
                  required: selectedWorkFlow!.parameters![0].isRequired,
                  description:
                      selectedWorkFlow!.parameters![0].description ?? "",
                  value: selectedStock?.symbol ?? "TDGPT",
                  disabled: true,
                ),
              ]
            : [],
        label: "/${selectedWorkFlow!.displayName}",
      );
    }

    body = StreamDto(
      task: sendText,
      symbol: selectedStock?.symbol ?? "TDGPT",
      symbolName: selectedStock?.companyName ?? "TraderGPT",
      report: report ?? false,
      isWebResearch: webMode ?? false,
      deepSearch: deepAnalysis ?? false,
      chatId: chadId!,
      replyId: "68c1d2c86d162417bca6fc8e",
      workflowObject: workflowObj,
      analysisRequired: false,
      isWorkflow: isWorkFlow,
    ).toJson();

    ref
        .read(chatProviderProvider.notifier)
        .sendMessage(
          ChatMessageDto(chatId: chadId!, message: sendText, type: "user"),
        )
        .catchError((e) => debugPrint("SendMessage Error: $e"));

    Future.delayed(const Duration(milliseconds: 50), () {
      if (mounted) {
        messageFocus.requestFocus();
        scrollToBottom();
      }
    });
  }

  getUser() async {
    dynamic userData = await ref.read(localDataProvider).getUser();
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
    final asyncStream = startStream
        ? ref.watch(sseProvider(body))
        : const AsyncValue.data({
            'buffer': "",
            "followUp": [],
            "chart": [],
            "updates": "",
          });
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: SideMenu(),
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              controller: sc,
              padding: EdgeInsets.all(16),
              children: [
                if (boolLoadMoreLoader)
                  SizedBox(
                    child: Center(
                      child: Transform.scale(
                        scale: 0.5,
                        child: const CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          strokeWidth: 2,
                          strokeCap: StrokeCap.round,
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 10),
                // chats.isNotEmpty
                //     ?
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    return RepaintBoundary(
                      child: ChatMessagesView(
                        chats: chats[index],
                        chatRouting: widget.chatRouting,
                        user: user,
                      ),
                    );
                  },
                  separatorBuilder: (_, __) => SizedBox(height: 20),
                ),
                // : WelcomeWidget(
                //     showCompanyBox:
                //         widget.chatRouting != null &&
                //         widget.chatRouting!.companyName.isNotEmpty,
                //     questions: questions,
                //     onQuestionTap: (selectedQuestion) {
                //       message.text = selectedQuestion;
                //       message.selection = TextSelection.fromPosition(
                //         TextPosition(offset: message.text.length),
                //       );
                //     },
                //   ),
                if (startStream)
                  asyncStream.when(
                    data: (line) {
                      final text = line["buffer"] ?? "";
                      final chartText = line["chart"] ?? [];
                      final display = chartText
                          .map<String>((e) => e.toString())
                          .toList();
                      oldDisplays = display;
                      oldResponse = line["buffer"];
                      return text.isNotEmpty
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 10),
                                ChatMarkdownWidget(
                                  updatesAskStream: updatesAskQuestions,
                                  message: text,
                                  name: widget.chatRouting?.symbol ?? "TDGPT",
                                  image: widget.chatRouting?.image ?? "",
                                  symbolType: widget.chatRouting?.type ?? "",
                                  type: "ai",
                                  display: display,
                                  messageId: "",
                                  runId: "",
                                  isStreaming: true,
                                ),
                              ],
                            )
                          : Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: LoadingWidgetMarkdown(),
                            );
                    },
                    loading: () => Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: LoadingWidgetMarkdown(),
                    ),
                    error: (err, _) => Text("Error: $err"),
                  ),
              ],
            ),
          ),

          SafeArea(
            bottom: true,
            child: ChatBottomBar(
              messageController: message,
              limitController: limit,
              textScrollController: _textScrollController,
              isWorkFlow: isWorkFlow,
              isWorkSymbol: isWorkSymbol,
              selectedStock: selectedStock,
              isWorkLimit: isWorkLimit,
              webMode: webMode ?? false,
              report: report ?? false,
              deepAnalysis: deepAnalysis ?? false,
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
                isWorkLimit = false;
                message.clear();
                setState(() {});
              },
              onSlashDetected: (ctx) => questionDialog(ctx),
              onWebModeChanged: (val) => setState(() => webMode = val),
              onReportChanged: (val) => setState(() => report = val),
              onDeepAnalysisChanged: (val) =>
                  setState(() => deepAnalysis = val),
            ),
          ),
        ],
      ),
    );
  }
}
