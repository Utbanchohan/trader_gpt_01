import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/company_analysis_dto/company_analysis_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/work_flow_model/work_flow.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/stock_screen.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_app_bar.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_bottom_bar.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/chat_message_item.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/loading_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/markdown_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/chat_provider.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/work_flow_provider.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/asking_popup_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/gradient_dialog.dart';
import 'package:trader_gpt/src/feature/side_menu/presentation/pages/side_menu.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../core/extensions/empty_stock.dart';
import '../../../../shared/widgets/loading_widget.dart';
import 'widgets/message_like_copy_icon.dart';

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
  List<String> oldDisplays = [];
  var body;
  String? chadId;
  User? user;
  bool dialogOpen = false;
  String? oldResponse;
  bool? webMode;
  bool? report;
  bool? deepAnalysis;
  List<Workflow> workflows = [];
  List<Workflow> cryptoWorkFLows = [];
  List<Workflow> stockWorkFlows = [];

  Workflow? selectedWorkFlow;
  bool isWorkFlow = false;
  bool isWorkSymbol = false;
  int chatPage = 1;
  bool boolLoadMoreLoader = false;

  @override
  void initState() {
    getChatsId();
    selectedStock = _mapChatRoutingToStock(widget.chatRouting);
    getRandomQuestions(
      selectedStock!.symbol.isNotEmpty ? selectedStock!.symbol : "[symbol]",
    );
    getWorkFlows();

    sc.addListener(() {
      if (sc.position.pixels <= sc.position.minScrollExtent) {
        loadMore();
      }
    });

    super.initState();
  }

  getWorkFlows() async {
    var res = await ref.read(workFlowProviderProvider.notifier).getWorksFlows();
    if (res.workflows.isNotEmpty) {
      for (var ij in res.workflows) {
        workflows.add(ij);
        if (ij.isStock ?? false) {
          stockWorkFlows.add(ij);
        } else {
          cryptoWorkFLows.add(ij);
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
    if (Navigator.of(context).canPop()) {
      // Navigator.of(context).pop();
    }
  }

  Widget _buildWorkflowList(BuildContext context, List workflows) {
    return ListView.builder(
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
                  "/${workflows[index].displayName}",
                  color: AppColors.white,
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h4,
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
    );
  }

  Future<void> _handleWorkflowSelection(int index) async {
    if (mounted) {
      setState(() => isWorkFlow = true);
    }

    final workflow = workflows[index];

    if (widget.chatRouting == null || widget.chatRouting!.symbol.isEmpty) {
      final params = workflow.parameters ?? [];

      if (params.isNotEmpty && params.first.name == "symbol") {
        if (mounted) {
          setState(() => isWorkSymbol = true);
        }
        _setMessage(workflow.displayName);
        _closeDialogs();

        selectedStock = await showDialog<Stock>(
          context: context,
          barrierDismissible: true,
          builder: (_) => GradientDialog(child: StockScreen()),
        );

        selectedWorkFlow = workflow;
      } else if (params.isNotEmpty && params.first.name == "limit") {
        _setMessage(workflow.displayName);
        selectedWorkFlow = workflow;
        _closeDialogs();
      } else {
        _setMessage(workflow.displayName);
        selectedWorkFlow = workflow;
        _closeDialogs();
      }
    }
    // Case 2: Chat routing exists with a symbol
    else {
      _setMessage(workflow.displayName);
      _closeDialogs();
    }
  }

  void questionDialog(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return GradientDialog(
          child: DefaultTabController(
            length: 3,
            child: SizedBox(
              height: 400.h,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TabBar(
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabAlignment: TabAlignment.start,
                          dividerColor:
                              Colors.transparent, // Removes bottom line
                          // 👇 Each tab has its own rounded border and background
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: AppColors
                                  .color046297, // Blue border for active tab
                              width: 1,
                            ),
                            color: AppColors
                                .color1B254B, // Background color for selected tab only
                          ),

                          labelColor: AppColors.white,
                          unselectedLabelColor: AppColors.colorB2B2B7,
                          labelPadding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),

                          tabs: [
                            Tab(
                              height: 28,
                              child: MdSnsText(
                                'All',
                                variant: TextVariant.h4,
                                fontWeight: TextFontWeightVariant.h4,

                                color: AppColors.color046297,
                              ),
                            ),
                            Tab(
                              height: 28,
                              child: MdSnsText(
                                'Stock',
                                variant: TextVariant.h4,
                                fontWeight: TextFontWeightVariant.h4,

                                color: AppColors.color046297,
                              ),
                            ),
                            Tab(
                              height: 28,
                              child: MdSnsText(
                                'Crypto',
                                variant: TextVariant.h4,
                                fontWeight: TextFontWeightVariant.h4,

                                color: AppColors.color046297,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.close),
                    ],
                  ),
                  SizedBox(height: 12.h),

                  Expanded(
                    child: TabBarView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        // 🟢 All
                        _buildWorkflowList(context, workflows),

                        // 🟡 Stock
                        _buildWorkflowList(context, stockWorkFlows),

                        // 🔵 Crypto
                        _buildWorkflowList(context, cryptoWorkFLows),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  getChatsId() async {
    if (widget.chatRouting != null && widget.chatRouting!.chatId.isNotEmpty) {
      chadId = widget.chatRouting!.chatId;
      getchats(chadId ?? "", chatPage);
    } else {
      var res = await ref.read(chatRepository).chats();
      if (res.isSuccess != null && res.isSuccess!) {
        for (int i = 0; i < res.data!.results.length; i++) {
          if (res.data!.results[i].symbol.toLowerCase() == "tdgpt") {
            chadId = res.data!.results[i].id;
            getchats(chadId ?? "", chatPage);
            break;
          }
        }
      } else {
        getchats(chadId ?? "", chatPage);
      }
    }
  }

  loadMore() {
    chatPage++;
    loadChats(chadId ?? "", chatPage);
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
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (sc.hasClients) {
        await Future.delayed(const Duration(milliseconds: 10));
        sc.jumpTo(sc.position.maxScrollExtent);
      }
    });
  }
  // void scrollToBottom() {
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     if (sc.hasClients) {
  //       sc.jumpTo(sc.position.maxScrollExtent); // 👈 instantly jump to bottom
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
            questions.add(
              ij.replaceAll('[SYMBOL]', widget.chatRouting!.symbol),
            );
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

  loadChats(String id, int page) async {
    try {
      boolLoadMoreLoader = true;
      var res = await ref.read(chatRepository).getMessages(id, page);
      if (res.isSuccess != null && res.isSuccess!) {
        boolLoadMoreLoader = false;

        for (int i = res.data!.messages!.length - 1; i >= 0; i--) {
          chats.insert(0, res.data!.messages![i]);
        }
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (sc.hasClients) {
            sc.animateTo(
              sc.position.minScrollExtent,
              duration: const Duration(milliseconds: 750),
              curve: Curves.easeOut,
            );
          }
        });
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
        body = StreamDto(
          task: message.text,
          symbol: selectedStock != null ? selectedStock!.symbol : "TDGPT",
          symbolName: selectedStock != null
              ? selectedStock!.companyName
              : "TraderGPT",
          report: report ?? false,
          isWebResearch: webMode ?? false,
          deepSearch: deepAnalysis ?? false,
          chatId: chadId!,
          replyId: "68c1d2c86d162417bca6fc8e",
          workflowObject: isWorkFlow
              ? WorkflowObject(
                  name: selectedWorkFlow!.name,
                  displayName: selectedWorkFlow!.displayName,
                  description: selectedWorkFlow!.description,
                  query: selectedWorkFlow!.query,
                  companyName: selectedStock != null
                      ? selectedStock!.companyName
                      : "TraderGPT",
                  parameters:
                      selectedWorkFlow!.parameters != null &&
                          selectedWorkFlow!.parameters!.isNotEmpty
                      ? [
                          WorkflowParameter(
                            name: selectedWorkFlow!.parameters![0].name,
                            required:
                                selectedWorkFlow!.parameters![0].isRequired,
                            description:
                                selectedWorkFlow!.parameters![0].description!,
                          ),
                        ]
                      : [],
                  label: "/${selectedWorkFlow!.displayName}",
                )
              : null,
          analysisRequired: false,
          isWorkflow: isWorkFlow,
        ).toJson();
        if (mounted) {
          setState(() {
            if (oldResponse != null) {
              chats.add(
                ChatMessageModel(
                  id: "temp",
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
            isWorkFlow = false;
            isWorkSymbol = false;
          });
        }
        scrollToBottom();
      }

      message.clear();
    }
  }

  getUser() async {
    dynamic userData = await ref.watch(localDataProvider).getUser();
    if (userData != null) {
      if (mounted) {
        setState(() {
          user = User.fromJson(userData);
        });
      }
    }
  }

  changeDialogueStatus() {
    if (mounted) {
      setState(() {
        dialogOpen = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    getUser();

    final asyncStream = startStream
        ? ref.watch(sseProvider(body))
        : const AsyncValue.data({'buffer': "", "followUp": [], 'chart': []});

    asyncStream.whenData((data) {
      followupQuestions = data["followUp"].isNotEmpty
          ? (data["followUp"] as List<String>?) ?? []
          : [];
      if (followupQuestions.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          if (!dialogOpen) {
            final chartText = data["chart"] ?? [];
            oldDisplays = chartText.map<String>((e) => e.toString()).toList();
            oldResponse = data["buffer"];
            showDialogue(questions, followupQuestions, message, 1);
            changeDialogueStatus();
          } else {
            final chartText = data["chart"] ?? [];
            oldDisplays = chartText.map<String>((e) => e.toString()).toList();
            oldResponse = data["buffer"];
          }
        });
      }
    });

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: true,
      drawer: SideMenu(),
      appBar: ChatAppBar(),
      body: SingleChildScrollView(
        controller: sc,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            boolLoadMoreLoader
                ? LoadingWidget(height: 20, width: 20, color: AppColors.white)
                : SizedBox(),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: chats.length,
              itemBuilder: (_, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ChatMessagesView(
                      chats: chats[index],
                      chatRouting: widget.chatRouting,
                      user: user,
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 20);
              },
            ),
            asyncStream.when(
              data: (line) {
                final text = line["buffer"] ?? "";
                final chartText = line["chart"] ?? [];
                print("Chart text: $chartText");
                List<String> chartStrings = chartText
                    .map<String>((e) => e.toString())
                    .toList();
                return text.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 10),
                          ChatMarkdownWidget(
                            message: text.toString(),
                            name: widget.chatRouting?.symbol ?? "TDGPT",
                            image: widget.chatRouting?.image ?? "",
                            symbolType: widget.chatRouting?.type ?? "",
                            type: "ai",
                            display: chartStrings,
                          ),
                        ],
                      )
                    : SizedBox();
              },
              loading: () => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    child: LoadingWidgetMarkdown(),
                  ),
                ],
              ),
              error: (err, _) => Text("Error: $err"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: ChatBottomBar(
          messageController: message,
          limitController: limit,
          textScrollController: _textScrollController,
          isWorkFlow: isWorkFlow,
          isWorkSymbol: isWorkSymbol,
          selectedStock: selectedStock,
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
            message.clear();
          },
          onSlashDetected: (ctx) => questionDialog(ctx),
          onWebModeChanged: (val) => setState(() => webMode = val),
          onReportChanged: (val) => setState(() => report = val),
          onDeepAnalysisChanged: (val) => setState(() => deepAnalysis = val),
        ),
      ),
    );
  }
}
