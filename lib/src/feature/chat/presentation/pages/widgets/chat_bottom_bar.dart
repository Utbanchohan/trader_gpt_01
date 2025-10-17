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
  });

  @override
  State<ChatBottomBar> createState() => _ChatBottomBarState();
}

class _ChatBottomBarState extends State<ChatBottomBar> {
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
    return AnimatedPadding(
      duration: Duration(milliseconds: 200),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        color: Colors.transparent,
        // height: isWorkSymbol ? 190.h : 160.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              // height: isWorkSymbol ? 145.h : 115.h,
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
                  mainAxisSize: MainAxisSize.min, // jitni zarurat utni height
                  children: [
                    TextField(
                      controller: widget.messageController,
                      style: const TextStyle(color: AppColors.white),
                      keyboardType: TextInputType.multiline,
                      minLines: 1, // kam se kam ek line
                      maxLines: 4, // max 4 line expand
                      scrollController: widget.textScrollController,
                      onChanged: (value) {
                        widget.textScrollController.jumpTo(
                          widget.textScrollController.position.maxScrollExtent,
                        );
                        if (value.endsWith("/")) {
                          widget.onSlashDetected(context);
                        }
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Ask anything about the market",
                        prefixIcon: GestureDetector(
                          onTap: widget.onPrefixTap,
                          child: Image.asset(
                            Assets.images.prefixIcon.path,
                            scale: 3.3.sp,
                          ),
                        ),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        suffixIcon: widget.isWorkFlow
                            ? IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                onPressed: widget.onDeleteWorkflow,
                              )
                            : null,
                        hintStyle: TextStyle(
                          color: AppColors.bluishgrey404F81,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    /// Work symbol chip
                    if (widget.isWorkSymbol && widget.selectedStock != null)
                      Container(
                        padding: EdgeInsets.all(5.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: AppColors.redFF3B3B),
                        ),
                        child: MdSnsText(
                          "Symbol | ${widget.selectedStock!.symbol}",
                          variant: TextVariant.h2,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.fieldTextColor,
                        ),
                      ),

                    if (widget.isWorkSymbol) SizedBox(height: 15.h),

                    /// Actions row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Settings Popup
                        PopupMenuButton<String>(
                          offset: Offset(
                            0,
                            -160.h,
                          ), // menu ko upar shift karna (value adjust kar lena)
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: AppColors.bubbleColor,
                          onSelected: (value) {},
                          itemBuilder: (context) => [
                            // Web Mode
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
                                        SizedBox(width: 8),
                                        MdSnsText(
                                          "Web Mode",
                                          variant: TextVariant.h4,
                                          fontWeight: TextFontWeightVariant.h4,
                                          color: AppColors.colorB2B2B7,
                                        ),
                                        Spacer(),
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

                            // Report
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
                                        SizedBox(width: 8),
                                        MdSnsText(
                                          "Report",
                                          variant: TextVariant.h4,
                                          fontWeight: TextFontWeightVariant.h4,
                                          color: AppColors.colorB2B2B7,
                                        ),
                                        Spacer(),
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

                            // Deep Analysis
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
                                        SizedBox(width: 8),
                                        MdSnsText(
                                          "Deep Analysis",
                                          variant: TextVariant.h4,
                                          fontWeight: TextFontWeightVariant.h4,
                                          color: AppColors.colorB2B2B7,
                                        ),
                                        Spacer(),
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
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 35.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.color091224,
                              border: Border.all(
                                color: AppColors.color3C4E8A,
                                width: 1.5,
                              ),
                            ),
                            child: Image.asset(
                              Assets.images.textfieldicon3.path,
                              color: AppColors.color3C4E8A,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              height: 36.h,
                              width: 36.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.bubbleColor,
                              ),
                              child: Image.asset(
                                Assets.images.textfieldicon.path,
                              ),
                            ),
                            SizedBox(width: 6.w),
                            GestureDetector(
                              onTap: _speechToText.isNotListening
                                  ? _startListening
                                  : _stopListening,
                              child: Container(
                                height: 36.h,
                                width: 36.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.bubbleColor,
                                ),
                                alignment: Alignment.center,
                                child: _speechToText.isNotListening
                                    ? Image.asset(
                                        height: 14.h,
                                        width: 12.w,
                                        Assets.images.textfieldicon4.path,
                                      )
                                    : Container(
                                        height: 16.h,
                                        width: 16.w,
                                        color: AppColors.redFF3B3B,
                                        alignment: Alignment.center,
                                        child: const Icon(
                                          Icons.square,
                                          size: 14,
                                          color: AppColors.black,
                                        ),
                                      ),
                              ),
                            ),
                            SizedBox(width: 6.w),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.color046297,
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.arrow_upward_rounded,
                                  color: AppColors.white,
                                  size: 18,
                                ),
                                onPressed: widget.onSend,
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
    );
  }
}
