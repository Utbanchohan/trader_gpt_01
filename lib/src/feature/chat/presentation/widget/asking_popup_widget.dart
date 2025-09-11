import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class AskingPopupWidget extends StatelessWidget {
  final List<String> questions;
  final TextEditingController controller;
   Stock? selectedStock;

   AskingPopupWidget({
    super.key,
    required this.questions,
    required this.controller,
     this.selectedStock
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
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
              tabs: const [
                Tab(text: 'Trending Q/A'),
                Tab(text: 'Related Q/A'),
              ],
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 400,
              child: TabBarView(
                children: [
                  _buildQuestionList(context, questions),
                  _buildQuestionList(
                    context,
                    List.generate(
                      20,
                      (index) => "What are today's best stocks?",
                    ),
                  ),
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

  Widget _buildQuestionList(BuildContext context, List<String> questionList) {
    return ListView.separated(
      itemCount: questionList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final question = questionList[index];
        return GestureDetector(
          onTap: () async {
            // 1️⃣ Close bottom sheet immediately

            // 2️⃣ Open StockScreen to select symbol
            Stock? selectedSymbol = await context.pushNamed<Stock>(
              AppRoutes.stockScreen.name,
            );

            // 3️⃣ Update the controller with full question
            if (selectedSymbol != null) {
              final updatedQuestion = question.replaceAll(
                '[SYMBOL]',
                selectedSymbol.symbol,
              );
              controller.text = updatedQuestion;
              selectedStock = selectedSymbol;
            }
            Navigator.pop(context, selectedSymbol);
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
