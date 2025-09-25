import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/stock_screen.dart';
import 'package:trader_gpt/src/feature/chat/presentation/widget/gradient_dialog.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class AskingPopupWidget extends StatefulWidget {
  final List<String> questions;
  final List<String> relatedQuestion;
  final TextEditingController controller;
  final int index;
  bool? showSheet;

  Stock? selectedStock;

  AskingPopupWidget({
    super.key,
    required this.questions,
    required this.controller,
    required this.relatedQuestion,
    required this.index,
    this.selectedStock,
    this.showSheet,
  });

  @override
  State<AskingPopupWidget> createState() => _AskingPopupWidgetState();
}

class _AskingPopupWidgetState extends State<AskingPopupWidget>
    with TickerProviderStateMixin {
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.animateTo(widget.index);
    super.initState();
  }

  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              controller: tabController,
              indicatorSize: TabBarIndicatorSize.tab,

              indicatorPadding: EdgeInsetsGeometry.zero,
              indicator: BoxDecoration(
                color: AppColors.color1B254B,
                borderRadius: BorderRadius.circular(25),
              ),
              labelColor: AppColors.white,
              unselectedLabelColor: Colors.white54,
              labelStyle: GoogleFonts.plusJakartaSans(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: GoogleFonts.plusJakartaSans(
                color: AppColors.colorB2B2B7,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              dividerHeight: 0,
              tabs: const [
                Tab(text: 'Trending Q/A'),
                Tab(text: 'Related Q/A'),
              ],
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 400,
              child: TabBarView(
                controller: tabController,
                children: [
                  _buildQuestionList(
                    context,
                    widget.questions,
                    widget.showSheet ?? true,
                  ),
                  _buildQuestionList(context, widget.relatedQuestion, false),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildCloseButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionList(
    BuildContext context,
    List<String> questionList,
    bool selectStock,
  ) {
    return ListView.separated(
      itemCount: questionList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final question = questionList[index];
        return GestureDetector(
          onTap: () async {
            // Pehle se open dialog band karo agar khula hai
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
            if (selectStock) {
              widget.selectedStock = await showDialog<Stock>(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return GradientDialog(child: StockScreen());
                },
              );

              if (widget.selectedStock != null) {
                final updatedQuestion = question.replaceAll(
                  '[SYMBOL]',
                  widget.selectedStock!.symbol,
                );
                widget.controller.text = updatedQuestion;
              }
            } else {
              widget.controller.text = question;
            }
          },
          child: buildQuestionChip(question),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 10),
    );
  }

  Widget _buildCloseButton(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        alignment: Alignment.center,
        width: 97.97,
        height: 43,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MdSnsText(
              'Close',
              variant: TextVariant.h2,
              fontWeight: TextFontWeightVariant.h4,

              color: AppColors.white,
            ),

            SizedBox(width: 8),
            const Icon(Icons.close, color: Colors.white, size: 20),
          ],
        ),
      ),
    );
  }
}

Widget buildQuestionChip(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),

      decoration: BoxDecoration(
        color: AppColors.bubbleColor,
        borderRadius: BorderRadius.circular(32.r),
      ),
      child: MdSnsText(
        text,
        variant: TextVariant.h2,
        fontWeight: TextFontWeightVariant.h4,
        color: AppColors.white,
      ),
    ),
  );
}
