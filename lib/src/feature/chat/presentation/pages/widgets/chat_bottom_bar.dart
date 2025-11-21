import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ChatBottomBar extends StatefulWidget {
  final TextEditingController messageController;
  final TextEditingController limitController;
  final ScrollController textScrollController;
  final bool isWorkFlow;
  final bool isWorkSymbol;
  final bool isWorkLimit;
  final Stock? selectedStock;
  bool webMode;
  bool report;
  bool deepAnalysis;
  final VoidCallback onSend;
  final VoidCallback onPrefixTap;
  final VoidCallback onDeleteWorkflow;
  final Function(BuildContext) onSlashDetected;
  final ValueChanged<bool> onWebModeChanged;
  final ValueChanged<bool> onReportChanged;
  final ValueChanged<bool> onDeepAnalysisChanged;

  ChatBottomBar({
    super.key,
    required this.messageController,
    required this.limitController,
    required this.textScrollController,
    required this.isWorkFlow,
    required this.isWorkSymbol,
    required this.selectedStock,
    required this.webMode,
    required this.report,
    required this.deepAnalysis,
    required this.onSend,
    required this.onPrefixTap,
    required this.onDeleteWorkflow,
    required this.onSlashDetected,
    required this.onWebModeChanged,
    required this.onReportChanged,
    required this.onDeepAnalysisChanged,
    required this.isWorkLimit,
  });

  @override
  State<ChatBottomBar> createState() => _ChatBottomBarState();
}

class _ChatBottomBarState extends State<ChatBottomBar> {
  final GlobalKey _popupKey = GlobalKey();
  final SpeechToText _speechToText = SpeechToText();

  bool speechEnabled = false;
  String lastWords = '';

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  Future<void> _initSpeech() async {
    bool available = await _speechToText.initialize();
    setState(() => speechEnabled = available);
  }

  Future<void> _startListening() async {
    // Clear previous text before starting new listening
    setState(() {
      lastWords = '';
      widget.messageController.text = "";
    });
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  Future<void> _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      lastWords = result.recognizedWords;
      widget.messageController.text = result.recognizedWords;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedPadding(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          margin: EdgeInsets.only(left: 15, bottom: 10),
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          final dynamic popupMenu = _popupKey.currentState;
                          popupMenu.showButtonMenu();
                        },
                        child: Container(
                          height: 45.h,
                          width: 45.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.bubbleColor,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 24,
                              color: AppColors.color0xFFB2B2B7,
                            ),
                          ),
                        ),
                      ),

                      PopupMenuButton<String>(
                        key: _popupKey,
                        offset: Offset(-45.w, -280.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: AppColors.bubbleColor,
                        onSelected: (value) {},
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            enabled: false,
                            padding: EdgeInsets.all(10.w),
                            child: SizedBox(
                              height: 20.h,
                              child: StatefulBuilder(
                                builder: (context, localSetState) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      widget.onPrefixTap?.call();
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          Assets.images.textfieldicon2.path,
                                          height: 18,
                                          width: 18,
                                        ),
                                        const SizedBox(width: 8),
                                        MdSnsText(
                                          "Trending Q/A",
                                          variant: TextVariant.h4,
                                          fontWeight: TextFontWeightVariant.h4,
                                          color: AppColors.colorB2B2B7,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),

                          PopupMenuDivider(
                            color: AppColors.white.withOpacity(0.3),
                          ),

                          /// Web Mode
                          PopupMenuItem(
                            enabled: false,
                            padding: EdgeInsets.all(10.w),
                            child: SizedBox(
                              height: 20.h,
                              child: StatefulBuilder(
                                builder: (context, localSetState) {
                                  return Row(
                                    children: [
                                      Image.asset(
                                        Assets.images.global.path,
                                        height: 18,
                                        width: 18,
                                      ),
                                      const SizedBox(width: 8),
                                      MdSnsText(
                                        "Web Mode",
                                        variant: TextVariant.h4,
                                        fontWeight: TextFontWeightVariant.h4,
                                        color: AppColors.colorB2B2B7,
                                      ),
                                      const Spacer(),
                                      Transform.scale(
                                        scale: 0.6,
                                        child: Switch(
                                          activeColor: Colors.lightBlueAccent,
                                          activeTrackColor:
                                              AppColors.secondaryColor,
                                          inactiveThumbColor:
                                              Colors.lightBlueAccent,
                                          inactiveTrackColor:
                                              AppColors.primaryColor,
                                          value: widget.webMode,
                                          onChanged: (val) {
                                            localSetState(
                                              () => widget.webMode = val,
                                            );
                                            widget.onWebModeChanged(val);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),

                          PopupMenuDivider(
                            color: AppColors.white.withOpacity(0.3),
                          ),

                          /// Report
                          PopupMenuItem(
                            padding: EdgeInsets.all(10.w),
                            child: SizedBox(
                              height: 20.h,
                              child: StatefulBuilder(
                                builder: (context, localSetState) {
                                  return Row(
                                    children: [
                                      Image.asset(
                                        Assets.images.note.path,
                                        height: 18,
                                        width: 18,
                                      ),
                                      const SizedBox(width: 8),
                                      MdSnsText(
                                        "Report",
                                        variant: TextVariant.h4,
                                        fontWeight: TextFontWeightVariant.h4,
                                        color: AppColors.colorB2B2B7,
                                      ),
                                      const Spacer(),
                                      Transform.scale(
                                        scale: 0.6,
                                        child: Switch(
                                          activeColor: Colors.lightBlueAccent,
                                          activeTrackColor:
                                              AppColors.secondaryColor,
                                          inactiveThumbColor:
                                              Colors.lightBlueAccent,
                                          inactiveTrackColor:
                                              AppColors.primaryColor,
                                          value: widget.report,
                                          onChanged: (val) {
                                            localSetState(
                                              () => widget.report = val,
                                            );
                                            widget.onReportChanged(val);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),

                          PopupMenuDivider(
                            color: AppColors.white.withOpacity(0.3),
                          ),

                          /// Deep Analysis
                          PopupMenuItem(
                            enabled: false,
                            padding: EdgeInsets.all(10.w),
                            child: SizedBox(
                              height: 20.h,
                              child: StatefulBuilder(
                                builder: (context, localSetState) {
                                  return Row(
                                    children: [
                                      Image.asset(
                                        Assets.images.radar.path,
                                        height: 18,
                                        width: 18,
                                      ),
                                      const SizedBox(width: 8),
                                      MdSnsText(
                                        "Deep Analysis",
                                        variant: TextVariant.h4,
                                        fontWeight: TextFontWeightVariant.h4,
                                        color: AppColors.colorB2B2B7,
                                      ),
                                      const Spacer(),
                                      Transform.scale(
                                        scale: 0.6,
                                        child: Switch(
                                          activeColor: Colors.lightBlueAccent,
                                          activeTrackColor:
                                              AppColors.secondaryColor,
                                          inactiveThumbColor:
                                              Colors.lightBlueAccent,
                                          inactiveTrackColor:
                                              AppColors.primaryColor,
                                          value: widget.deepAnalysis,
                                          onChanged: (val) {
                                            localSetState(
                                              () => widget.deepAnalysis = val,
                                            );
                                            widget.onDeepAnalysisChanged(val);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                        child: const SizedBox.shrink(),
                      ),
                    ],
                  ),

                  SizedBox(width: 8.w),

                  /// Text Field
                  Expanded(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 50.h, // starting height (single line)
                        maxHeight: 150.h, // maximum when it expands
                      ),
                      child: Container(
                        margin: EdgeInsets.only(right: 15.w),
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: AppColors.gradient,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.color0E1738,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 80.w),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // ✅ TextField
                                    TextField(
                                      controller: widget.messageController,

                                      style: const TextStyle(
                                        color: AppColors.white,
                                        fontSize: 14,
                                      ),
                                      keyboardType: TextInputType.multiline,
                                      minLines: 1,
                                      maxLines: 5,
                                      scrollController:
                                          widget.textScrollController,
                                      onChanged: (value) {
                                        if (value.endsWith("/")) {
                                          widget.onSlashDetected(context);
                                        }
                                        if (value.isEmpty) {
                                          widget.onDeleteWorkflow();
                                        }
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: 12.h,
                                          horizontal: 8.w,
                                        ),
                                        border: InputBorder.none,
                                        hintText:
                                            "Ask anything about the market",
                                        hintMaxLines: 1,
                                        hintStyle: const TextStyle(
                                          color: AppColors.bluishgrey404F81,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        suffixIcon: widget.isWorkFlow
                                            ? GestureDetector(
                                                onTap: widget.onDeleteWorkflow,
                                                child: const Icon(
                                                  Icons.delete,
                                                  size: 18,
                                                  color: Color(0xFFFF3B3B),
                                                ),
                                              )
                                            : null,
                                      ),
                                    ),

                                    // ✅ Optional Symbol Chip (Inside Column)
                                    if (widget.isWorkSymbol &&
                                        widget.isWorkFlow)
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5.h,
                                          horizontal: 10.w,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 8.w,
                                            vertical: 4.h,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              5.r,
                                            ),
                                            border: Border.all(
                                              color: AppColors.redFF3B3B,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              MdSnsText(
                                                "Symbol | ${widget.selectedStock!.symbol}",
                                                variant: TextVariant.h2,
                                                fontWeight:
                                                    TextFontWeightVariant.h4,
                                                color: AppColors.fieldTextColor,
                                              ),
                                              if (widget.isWorkSymbol) ...[
                                                SizedBox(width: 8.w),
                                                GestureDetector(
                                                  onTap:
                                                      widget.onDeleteWorkflow,
                                                  child: Icon(
                                                    Icons.delete,
                                                    size: 18,
                                                    color: AppColors.redFF3B3B,
                                                  ),
                                                ),
                                              ],
                                            ],
                                          ),
                                        ),
                                      ),

                                    // if (widget.isWorkLimit)
                                    //   TextField(
                                    //     controller: widget.limitController,
                                    //     style: const TextStyle(
                                    //       color: AppColors.white,
                                    //       fontSize: 14,
                                    //     ),

                                    //     decoration: InputDecoration(
                                    //       filled: true,
                                    //       fillColor: Colors.transparent,
                                    //       isDense: true,
                                    //       contentPadding:
                                    //           EdgeInsets.symmetric(
                                    //             vertical: 12.h,
                                    //             horizontal: 8.w,
                                    //           ),
                                    //       border: InputBorder.none,
                                    //       hintText:
                                    //           "Ask anything about the ;",
                                    //       hintMaxLines: 1,
                                    //       hintStyle: const TextStyle(
                                    //         color: AppColors.bluishgrey404F81,
                                    //         fontSize: 14,
                                    //         fontWeight: FontWeight.w400,
                                    //       ),
                                    //     ),
                                    //   ),

                                    ///lalalalala
                                    ///   if (widget.isWorkSymbol &&
                                    if (widget.isWorkLimit)
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(
                                            8.r,
                                          ),
                                          border: Border.all(
                                            color: AppColors.bluishgrey404F81
                                                .withOpacity(0.5),
                                            width: 1,
                                          ),
                                        ),
                                        child: SizedBox(
                                          height: 40
                                              .h, // 👈 fixed height to keep vertical alignment perfect
                                          child: TextField(
                                            controller: widget.limitController,
                                            keyboardType: TextInputType.number,
                                            style: const TextStyle(
                                              color: AppColors.white,
                                              fontSize: 14,
                                            ),
                                            textAlignVertical: TextAlignVertical
                                                .center, // 👈 centers text vertically
                                            decoration: InputDecoration(
                                              isDense: true,
                                              filled: true,
                                              fillColor: Colors.transparent,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                    horizontal: 10.w,
                                                  ),
                                              border: InputBorder.none,
                                              hintText: "Enter limit...",
                                              hintMaxLines: 1,
                                              hintStyle: const TextStyle(
                                                color:
                                                    AppColors.bluishgrey404F81,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              suffixIcon: widget.isWorkLimit
                                                  ? Padding(
                                                      padding: EdgeInsets.only(
                                                        right: 6.w,
                                                      ), // 👈 aligns icon properly
                                                      child: IconButton(
                                                        icon: Icon(
                                                          Icons.delete,
                                                          color: Colors.red,
                                                          size: 20,
                                                        ),
                                                        onPressed: widget
                                                            .onDeleteWorkflow,
                                                        splashRadius: 20,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),

                              // ✅ Mic + Send buttons (fixed bottom-right)
                              Positioned(
                                right: 10.w,
                                bottom: 8.h,
                                child: Row(
                                  children: [
                                    // 🎤 Mic button
                                    GestureDetector(
                                      onTap: _speechToText.isNotListening
                                          ? _startListening
                                          : _stopListening,
                                      child: Container(
                                        height: 28.h,
                                        width: 28.w,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.bubbleColor,
                                        ),
                                        alignment: Alignment.center,
                                        child: _speechToText.isNotListening
                                            ? Image.asset(
                                                Assets
                                                    .images
                                                    .textfieldicon4
                                                    .path,
                                                height: 14.h,
                                                width: 12.w,
                                              )
                                            : Container(
                                                height: 14.h,
                                                width: 14.w,
                                                color: AppColors.redFF3B3B,
                                                alignment: Alignment.center,
                                                child: const Icon(
                                                  Icons.square,
                                                  size: 11,
                                                  color: AppColors.black,
                                                ),
                                              ),
                                      ),
                                    ),
                                    SizedBox(width: 6.w),

                                    Container(
                                      height: 28.h,
                                      width: 28.w,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.color046297,
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        icon: const Icon(
                                          Icons.arrow_upward_rounded,
                                          color: AppColors.white,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          FocusScope.of(context).unfocus();
                                          if (!_speechToText.isNotListening) {
                                            _stopListening();
                                          }
                                          widget.onSend();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
