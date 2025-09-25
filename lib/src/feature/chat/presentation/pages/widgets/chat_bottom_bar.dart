import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'setting_widget.dart';

class ChatBottomBar extends StatelessWidget {
  final TextEditingController messageController;
  final TextEditingController limitController;
  final ScrollController textScrollController;
  final bool isWorkFlow;
  final bool isWorkSymbol;
  final Stock? selectedStock;

  final bool webMode;
  final bool report;
  final bool deepAnalysis;

  final VoidCallback onSend;
  final VoidCallback onPrefixTap;
  final VoidCallback onDeleteWorkflow;
  final Function(BuildContext) onSlashDetected;
  final ValueChanged<bool> onWebModeChanged;
  final ValueChanged<bool> onReportChanged;
  final ValueChanged<bool> onDeepAnalysisChanged;

  const ChatBottomBar({
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
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        color: Colors.transparent,
        height: isWorkSymbol ? 190.h : 160.h,
        child: Column(
          children: [
            Container(
              height: isWorkSymbol ? 145.h : 115.h,
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
                        controller: messageController,
                        style: const TextStyle(color: AppColors.white),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        scrollController: textScrollController,
                        onChanged: (value) {
                          textScrollController.jumpTo(
                            textScrollController.position.maxScrollExtent,
                          );
                          if (value.endsWith("/")) {
                            onSlashDetected(context);
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ask anything about the market",
                          prefixIcon: GestureDetector(
                            onTap: onPrefixTap,
                            child: Image.asset(
                              Assets.images.prefixIcon.path,
                              scale: 3.3.sp,
                            ),
                          ),
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 0, minHeight: 0),
                          suffixIcon: isWorkFlow
                              ? IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: onDeleteWorkflow,
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

                    /// Work symbol chip
                    if (isWorkSymbol && selectedStock != null)
                      Container(
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
                      ),

                    SizedBox(height: 15.h),

                    /// Actions row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Settings Popup
                        PopupMenuButton<String>(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: AppColors.bubbleColor,
                          onSelected: (value) {},
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              enabled: false,
                              child: SettingsCard(
                                icon: Icons.public,
                                title: "Web Mode",
                                value: webMode,
                                onChanged: onWebModeChanged,
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
                                onChanged: onReportChanged,
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
                                onChanged: onDeepAnalysisChanged,
                              ),
                            ),
                          ],
                          child: Container(
                            padding: const EdgeInsets.all(10),
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
                            Container(
                              padding: const EdgeInsets.all(12),
                              height: 36.h,
                              width: 36.w,
                              decoration: const BoxDecoration(
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
                                onPressed: onSend,
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
