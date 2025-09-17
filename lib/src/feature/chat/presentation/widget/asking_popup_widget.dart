import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/stock_screen.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class AskingPopupWidget extends StatefulWidget    {
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

class _AskingPopupWidgetState extends State<AskingPopupWidget>    with TickerProviderStateMixin {



  @override
  void initState() {
       tabController = TabController(length: 2, vsync: this);
       tabController.animateTo(widget.index);
    // TODO: implement initState
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
                  _buildQuestionList(context, widget.questions,
                  widget.showSheet??true
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
                  return AlertDialog(
                    alignment: Alignment.center,
                    backgroundColor:
                        Colors.transparent, // transparent so gradient visible
                    insetPadding: EdgeInsets.all(0),
                    contentPadding: EdgeInsets.all(0),
                    content: Container(
                      width: 0.9.sw,
                      height: 0.6.sh,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: AppColors.gradient,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(2), // gradient border thickness
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: StockScreen(),
                        ),
                      ),
                    ),
                  );
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
              size: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
            const SizedBox(width: 8),
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
    child: Chip(
      label: MdSnsText(
        text,
        color: AppColors.white,
        size: 16,
        fontWeight: FontWeight.w400,
      ),
      backgroundColor: AppColors.bubbleColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
        side: const BorderSide(color: Colors.transparent),
      ),
    ),
  );
}
