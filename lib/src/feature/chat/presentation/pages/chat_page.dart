import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/task_dto/task_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/chat_provider.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/asking_popup_widget.dart';
import 'package:trader_gpt/src/shared/custom_message.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../../../core/routes/routes.dart';

class ChatPage extends ConsumerStatefulWidget {
  ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  final TextEditingController message = TextEditingController();
  List<ChatMessageModel> chats = [];
  List<String> questions = [];
  dynamic asyncStream;
  bool startStream = false;
  var body;

  @override
  void initState() {
    getRandomQuestions();
    getchats();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    message.dispose();
    super.dispose();
  }

  logout() {
    String token = "";
    ref.read(localDataProvider).setAccessToken(token);
    context.goNamed(AppRoutes.signInPage.name);
  }

  getRandomQuestions() async {
    var res = await ref.read(chatRepository).randomQuestions("[symbol]");
    if (res.isSuccess) {
      for (var ij in res.questions) {
        questions.add(ij);
      }
      setState(() {});
    } else {
      return false;
    }
  }

  getchats() async {
    var res = await ref
        .read(chatRepository)
        .getMessages("68c2f0f5b77590fbe176f8e1", 1);
    if (res.isSuccess) {
      for (int i = 0; i < res.data!.messages!.length; i++) {
        chats.add(res.data!.messages![i]);
      }
      setState(() {});
    } else {
      return false;
    }
  }

  void _sendMessage(WidgetRef ref) async {
    String userid = ref.watch(localDataProvider).getUserId;
    final text = message.text.trim();
    if (text.isNotEmpty) {
      var res = await ref
          .read(chatProviderProvider.notifier)
          .sendMessage(
            ChatMessageDto(
              chatId: "68c2f0f5b77590fbe176f8e1",
              message: text,
              type: "user",
            ),
          );
      if (res != null) {
        body = {
          "task": message.text,
          "symbol": "MSFT",
          "symbol_name": "Microsoft Corporation",
          "report": false,
          "is_web_research": false,
          "deep_search": false,
          "chat_id": "68c16b966d162417bca6fc30",
          "reply_id": "68c1d2c86d162417bca6fc8e",
          "workflow_object": null,
          "analysis_required": false,
          "is_workflow": false,
        };
        setState(() {
          chats.add(
            ChatMessageModel(
              id: "temp",
              chatId: "68c2f0f5b77590fbe176f8e1",
              message: text,
              type: "user",
              userId: userid,
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
            ),
          );
          startStream = true;
        });
      }

      message.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final asyncStream = startStream
        ? ref.watch(sseProvider(body))
        : const AsyncValue.data("");

    return Scaffold(
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height * 0.2,

          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  showDialog<void>(
                    context: context,

                    barrierDismissible: true, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        alignment: Alignment.center,
                        backgroundColor: AppColors.primaryColor,
                        insetPadding: EdgeInsets.all(0),
                        contentPadding: EdgeInsets.all(0),
                        content: AskingPopupWidget(questions: questions),
                      );
                    },
                  );

                  // showModalBottomSheet(
                  //   context: context,
                  //   // isScrollControlled:
                  //   //     true, // optional: allows full-screen height
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.vertical(
                  //       top: Radius.circular(20),
                  //     ),
                  //   ),
                  //   builder: (BuildContext context) {
                  //     return
                  //   },
                  // );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.fieldTextColor),
                    color: AppColors.bubbleColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MdSnsText(
                        "Top Asking Questions",
                        size: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.keyboard_arrow_up,
                        size: 25,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),

              Container(
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
                          controller: message,
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
            ],
          ),
        ),
      ),

      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            logout();
          },
          child: Image.asset(Assets.images.menu.path, width: 40, height: 40),
        ),
        title: Image.asset(Assets.images.logo.path, width: 187, height: 35.27),
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
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    // Row(
                    //   children: [
                    //     Container(
                    //                   padding: EdgeInsets.symmetric(vertical: 8),
                    //                   child: MdSnsText("Today", color: Colors.white70, size: 14),
                    //                 ),
                    //   ],
                    // ),
                    // SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: chats[index].type == "user"
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,

                      children: [
                        Visibility(
                          visible: chats[index].type == "user",
                          child: GestureDetector(
                            onTap: () {
                              Clipboard.setData(
                                ClipboardData(text: chats[index].message),
                              );
                              $showMessage("Copied to Clipboard");
                            },
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
                        ),
                        SizedBox(width: chats[index].type == "user" ? 10 : 0),
                        Container(
                          width: MediaQuery.sizeOf(context).width / 1.5,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.bubbleColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          // child: Flexible(
                          child: MarkdownBody(
                            data: chats[index].message,
                            selectable: true, // let user copy code
                            styleSheet:
                                MarkdownStyleSheet.fromTheme(
                                  Theme.of(context),
                                ).copyWith(
                                  code: GoogleFonts.plusJakartaSans(
                                    color: AppColors.white,
                                    fontSize: 16,

                                    fontWeight: FontWeight.w400,
                                  ),

                                  blockquote: const TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                            onTapLink: (text, href, title) {
                              if (href != null) {
                                // launchUrl(Uri.parse(href)); // needs url_launcher
                              }
                            },
                          ),
                        ),
                        SizedBox(width: chats[index].type != "user" ? 10 : 0),
                        Visibility(
                          visible: chats[index].type != "user",
                          child: Expanded(
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
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width / 1.4,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.bubbleColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: MarkdownBody(
                            data: line,
                            selectable: true, // let user copy code
                            styleSheet:
                                MarkdownStyleSheet.fromTheme(
                                  Theme.of(context),
                                ).copyWith(
                                  code: GoogleFonts.plusJakartaSans(
                                    color: AppColors.white,
                                    fontSize: 16,

                                    fontWeight: FontWeight.w400,
                                  ),

                                  blockquote: const TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                            onTapLink: (text, href, title) {
                              if (href != null) {
                                // launchUrl(Uri.parse(href)); // needs url_launcher
                              }
                            },
                          ),
                        ),
                        SizedBox(width: 10),

                        Visibility(
                          visible: line.isNotEmpty,
                          child: Expanded(
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
                        ),
                      ],
                    ),
                  ],
                );
              },

              loading: () => Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width / 1.4,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.bubbleColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: MdSnsText(
                      "Thinking....",
                      color: AppColors.white,
                      size: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              error: (err, _) => Center(child: Text("Error: $err")),
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
            Image.asset(
              icon,
              width: 14,
              height: 14,
              color: AppColors.color3C4E8A,
            ),
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
