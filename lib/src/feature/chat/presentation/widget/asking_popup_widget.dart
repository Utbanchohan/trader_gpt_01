import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class AskingPopupWidget extends StatelessWidget {
  AskingPopupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // number of
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              padding: EdgeInsets.all(0),
              indicator: BoxDecoration(
                color: AppColors.color1B254B,

                borderRadius: BorderRadius.circular(25),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsetsGeometry.zero,
              labelPadding: EdgeInsets.all(0),
              labelColor: AppColors.white,
              unselectedLabelStyle: GoogleFonts.plusJakartaSans(
                color: AppColors.colorB2B2B7,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: Colors.white54,
              labelStyle: GoogleFonts.plusJakartaSans(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              dividerHeight: 0,
              tabs: [
                Tab(text: 'Trending Q/A'),
                Tab(text: 'Related Q/A'),
              ],
            ),

            SizedBox(height: 25),

            SizedBox(
              height: 400, // adjust as needed
              child: TabBarView(
                children: [
                  ListView.separated(
                    itemCount: 20,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          context.goNamed(AppRoutes.stockScreen.name);
                        },
                        child: buildQuestionChip(
                          'Top Performing Stocks For Today?',
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 10);
                    },
                  ),

                  ListView.separated(
                    itemCount: 20,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          context.goNamed(AppRoutes.stockScreen.name);
                        },
                        child: buildQuestionChip(
                          "What are today's best stocks?",
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 10);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Close button
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },

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
                    SizedBox(width: 8),
                    Icon(Icons.close, color: Colors.white, size: 20),
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
        side: BorderSide(color: Colors.transparent),
      ),
    ),
  );
}
