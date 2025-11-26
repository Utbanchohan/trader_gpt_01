import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/operating_cash_flow.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../shared/chart/lin_chart.dart';
import '../../../../../../shared/widgets/cashdebt_shimmer_widgets.dart';
import '../../../../../../shared/widgets/cashdebt_widgets.dart';
import '../../../../../../shared/widgets/financialtable_widgets.dart';
import '../../../../../../shared/widgets/table_shimmer.dart';
import '../../../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../domain/model/financial_chart_data/financial_chart_data_model.dart';
import '../../../../domain/model/financial_data_model/financial_data_model.dart';

class FinancialTab extends ConsumerStatefulWidget {
  final bool financialLoader;
  final FinanceDataResponse? financeChartsDataModel;
  final bool financialResponseLoader;
  final FinancialResponse? financialResponse;
  final String symbol;
  final void Function(String id) onPressed;

  final dynamic id;
  const FinancialTab({
    super.key,
    required this.financialLoader,
    this.financeChartsDataModel,
    required this.financialResponseLoader,
    this.financialResponse,
    required this.id,
    required this.symbol,
    required this.onPressed,
  });

  @override
  ConsumerState<FinancialTab> createState() => _FinancialTabState();
}

class _FinancialTabState extends ConsumerState<FinancialTab> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  String _activeSection = 'summary';
  final Map<String, GlobalKey> _keys = {};
  final List<String> financialtabs = [
    "Summary",
    "Income Statement",
    "Balance Sheet",
    "Cash Flow",
  ];

  final List<Map<String, dynamic>> sections = [
    {'id': 'summary', 'title': 'Summary', 'color': Colors.red},
    {
      'id': 'income_statement',
      'title': 'Income Statement',
      'color': Colors.green,
    },
    {'id': 'balance_sheet', 'title': 'Balance Sheet', 'color': Colors.blue},
    {'id': 'cash_flow', 'title': 'Cash Flow', 'color': Colors.orange},
  ];

  void _scrollToSection(String id, Map<String, dynamic> section) {
    _activeSection = id;
    final key = _keys[id];
    setState(() {
      if (id == "summary") {
        widget.onPressed("0");
      } else {
        widget.onPressed("1");
      }
    });
    final index = sections.indexOf(section);
    itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
    );
    // if (key?.currentContext != null) {
    //   Scrollable.ensureVisible(
    //     key!.currentContext!,
    //     duration: const Duration(milliseconds: 100),
    //     curve: Curves.easeInOut,
    //   );
    // }
  }

  @override
  void initState() {
    super.initState();
    // for (var section in sections) {
    //   _keys[section['id']] = GlobalKey();
    // }
    // // _scrollController.addListener(_onScroll);

    // itemPositionsListener.itemPositions.addListener(() {
    //   final positions = itemPositionsListener.itemPositions.value;

    //   // Find first visible section
    //   int? firstIndex = positions
    //       .where((pos) => pos.itemTrailingEdge > 0)
    //       .map((pos) => pos.index)
    //       .fold(null, (a, b) => a == null ? b : (a < b ? a : b));

    //   if (firstIndex != null) {
    //     final id = sections[firstIndex]['id'];
    //     if (id != _activeSection) {
    //       setState(() {
    //         _activeSection = id;

    //         if (id == "summary") {
    //           widget.onPressed("0");
    //         } else {
    //           widget.onPressed("1");
    //         }
    //       });
    //     }
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.id,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              MdSnsText(
                "Financial",
                variant: TextVariant.h2,
                fontWeight: TextFontWeightVariant.h1,
                color: AppColors.fieldTextColor,
              ),
              SizedBox(width: 5),
              Image.asset(
                "assets/images/info-circle.png",
                height: 14,
                width: 14,
              ),
            ],
          ),

          SizedBox(height: 6),
          MdSnsText(
            "Last Updated: 01-19-2023 10:30:33 EST",
            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h4,
            color: AppColors.white,
          ),
          SizedBox(height: 15),

          DefaultTabController(
            length: 4,
            child: Builder(
              builder: (context) {
                final TabController financeialTabController =
                    DefaultTabController.of(context);

                return Column(
                  children: [
                    // ⬅️ TAB BAR
                    AnimatedBuilder(
                      animation: financeialTabController.animation!,
                      builder: (context, _) {
                        return TabBar(
                          onTap: (value) {
                            widget.onPressed(value.toString());
                          },
                          controller: financeialTabController,
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabAlignment: TabAlignment.start,
                          indicatorAnimation: TabIndicatorAnimation.elastic,
                          dividerColor: Colors.transparent,
                          indicatorPadding: const EdgeInsets.all(4),
                          labelPadding: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          indicator: BoxDecoration(
                            color: AppColors.color203063,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: AppColors.color0x1AB3B3B3,
                              width: 1,
                            ),
                          ),
                          tabs: List.generate(4, (index) {
                            final List<String> tabTitles = financialtabs;
                            final bool isSelected =
                                financeialTabController.index == index ||
                                (financeialTabController.indexIsChanging &&
                                    financeialTabController.previousIndex ==
                                        index);

                            return Tab(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: AppColors.color0x1AB3B3B3,
                                    width: 1,
                                  ),
                                ),
                                child: MdSnsText(
                                  tabTitles[index],
                                  color: isSelected
                                      ? AppColors.white
                                      : AppColors.color677FA4,
                                  variant: isSelected
                                      ? TextVariant.h2
                                      : TextVariant.h3,
                                  fontWeight: isSelected
                                      ? TextFontWeightVariant.h1
                                      : TextFontWeightVariant.h4,
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                    // Container(
                    //   height: 60,
                    //   // color: Colors.grey[200],
                    //   child: SingleChildScrollView(
                    //     scrollDirection: Axis.horizontal,
                    //     padding: const EdgeInsets.symmetric(horizontal: 8),
                    //     child: Row(
                    //       children: sections.map((section) {
                    //         final bool isActive = _activeSection == section['id'];

                    //         return GestureDetector(
                    //           onTap: () => _scrollToSection(section['id']!, section),
                    //           child: Container(
                    //             padding: const EdgeInsets.symmetric(
                    //               horizontal: 20,
                    //               vertical: 10,
                    //             ),
                    //             margin: const EdgeInsets.symmetric(
                    //               horizontal: 8,
                    //               vertical: 6,
                    //             ),
                    //             decoration: BoxDecoration(
                    //               color: isActive
                    //                   ? AppColors.bubbleColor
                    //                   : Colors.transparent,
                    //               borderRadius: BorderRadius.circular(50),
                    //               border: Border.all(
                    //                 color: isActive
                    //                     ? Colors.transparent
                    //                     : AppColors.colorB2B2B7.withOpacity(0.4),
                    //                 width: 1,
                    //               ),
                    //             ),
                    //             child: MdSnsText(
                    //               section['title'] as String,
                    //               variant: isActive ? TextVariant.h2 : TextVariant.h3,
                    //               color: isActive
                    //                   ? AppColors.white
                    //                   : AppColors.color677FA4,
                    //               fontWeight: isActive
                    //                   ? TextFontWeightVariant.h1
                    //                   : TextFontWeightVariant.h4,
                    //             ),
                    //           ),
                    //         );
                    //       }).toList(),
                    //     ),
                    //   ),
                    // ),

                    // ScrollablePositionedList.builder(
                    //   physics: NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   itemCount: sections.length,
                    //   itemScrollController: itemScrollController,
                    //   itemPositionsListener: itemPositionsListener,
                    //   itemBuilder: (context, index) {
                    //     final id = sections[index]['id'];

                    //     switch (id) {
                    //       case "summary":
                    //         return SingleChildScrollView(
                    //           key: _keys[id],
                    //           physics: NeverScrollableScrollPhysics(),
                    //           child: Column(
                    //             children: [
                    //               SizedBox(height: 15),

                    //               widget.financialLoader == true
                    //                   ? CashDebtShimmer()
                    //                   : widget.financeChartsDataModel != null &&
                    //                         widget
                    //                                 .financeChartsDataModel!
                    //                                 .data
                    //                                 .cashAndDebt
                    //                                 .yearly !=
                    //                             null &&
                    //                         widget
                    //                             .financeChartsDataModel!
                    //                             .data
                    //                             .cashAndDebt
                    //                             .yearly!
                    //                             .metrics
                    //                             .isNotEmpty
                    //                   ? CashdebtWidgets(
                    //                       title: "Cash and Debt",
                    //                       cash: "Cash",
                    //                       debt: "Debt",
                    //                       rawCash:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .cashAndDebt
                    //                               .yearly!
                    //                               .metrics['Cash'] ??
                    //                           [],
                    //                       rawDebt:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .cashAndDebt
                    //                               .yearly!
                    //                               .metrics['Debt'] ??
                    //                           [],
                    //                     )
                    //                   : SizedBox(),
                    //               const SizedBox(height: 20),

                    //               widget.financialLoader == true
                    //                   ? CashDebtShimmer()
                    //                   : widget.financeChartsDataModel != null &&
                    //                         widget
                    //                                 .financeChartsDataModel!
                    //                                 .data
                    //                                 .assetsAndStockHolders
                    //                                 .yearly !=
                    //                             null &&
                    //                         widget
                    //                             .financeChartsDataModel!
                    //                             .data
                    //                             .assetsAndStockHolders
                    //                             .yearly!
                    //                             .metrics
                    //                             .isNotEmpty
                    //                   ? CashdebtWidgets(
                    //                       title: "Assets and Stockholders",
                    //                       cash: "Total Assets",
                    //                       debt: "Total StackHolder",
                    //                       rawCash:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .assetsAndStockHolders
                    //                               .yearly!
                    //                               .metrics["Total Assets"] ??
                    //                           [],
                    //                       rawDebt:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .assetsAndStockHolders
                    //                               .yearly!
                    //                               .metrics["Total StockHolder"] ??
                    //                           [],
                    //                     )
                    //                   : SizedBox(),
                    //               SizedBox(height: 20),
                    //               widget.financialLoader == true
                    //                   ? CashDebtShimmer()
                    //                   : widget.financeChartsDataModel != null &&
                    //                         widget
                    //                                 .financeChartsDataModel!
                    //                                 .data
                    //                                 .outstandingSharesBuyback
                    //                                 .yearly !=
                    //                             null &&
                    //                         widget
                    //                             .financeChartsDataModel!
                    //                             .data
                    //                             .outstandingSharesBuyback
                    //                             .yearly!
                    //                             .metrics
                    //                             .isNotEmpty
                    //                   ? CashdebtWidgets(
                    //                       title: "Outstanding Shares & Buyback",
                    //                       cash: "Outstanding Shares",
                    //                       debt: "Stock Buyback Percentage",
                    //                       rawCash:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .outstandingSharesBuyback
                    //                               .yearly!
                    //                               .metrics["Outstanding Shares"] ??
                    //                           [],
                    //                       rawDebt:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .outstandingSharesBuyback
                    //                               .yearly!
                    //                               .metrics["Stock Buyback Percentage"] ??
                    //                           [],
                    //                     )
                    //                   : SizedBox(),
                    //               // CashDebtShimmer(),
                    //               const SizedBox(height: 20),
                    //               widget.financialLoader == true
                    //                   ? CashDebtShimmer()
                    //                   : widget.financeChartsDataModel != null &&
                    //                         widget
                    //                                 .financeChartsDataModel!
                    //                                 .data
                    //                                 .revenueAndIncome
                    //                                 .yearly !=
                    //                             null &&
                    //                         widget
                    //                             .financeChartsDataModel!
                    //                             .data
                    //                             .revenueAndIncome
                    //                             .yearly!
                    //                             .metrics
                    //                             .isNotEmpty
                    //                   ? CashdebtWidgets(
                    //                       title: "Revenue and Income",
                    //                       cash: "Revenue",
                    //                       debt: "Income",
                    //                       rawCash:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .revenueAndIncome
                    //                               .yearly!
                    //                               .metrics["Revenue"] ??
                    //                           [],
                    //                       rawDebt:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .revenueAndIncome
                    //                               .yearly!
                    //                               .metrics["Income"] ??
                    //                           [],
                    //                     )
                    //                   : SizedBox(),
                    //               //  CashDebtShimmer(),
                    //               const SizedBox(height: 20),

                    //               widget.financeChartsDataModel != null &&
                    //                       widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .cashFlowData
                    //                               .yearly !=
                    //                           null &&
                    //                       widget
                    //                           .financeChartsDataModel!
                    //                           .data
                    //                           .cashFlowData
                    //                           .yearly!
                    //                           .metrics
                    //                           .isNotEmpty
                    //                   ? OperatingCashFlow(
                    //                       title: "Cash Flow Data",
                    //                       rawCash:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .cashFlowData
                    //                               .yearly!
                    //                               .metrics["Operating Cash Flow"] ??
                    //                           [],
                    //                       rawDebt:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .cashFlowData
                    //                               .yearly!
                    //                               .metrics["Free Cash Flow"] ??
                    //                           [],
                    //                       rawAssets:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .cashFlowData
                    //                               .yearly!
                    //                               .metrics["Net Income"] ??
                    //                           [],
                    //                       rawEquity:
                    //                           widget
                    //                               .financeChartsDataModel!
                    //                               .data
                    //                               .cashFlowData
                    //                               .yearly!
                    //                               .metrics["Cash Flow Dividends"] ??
                    //                           [],
                    //                     )
                    //                   : SizedBox(),
                    //               // CashDebtShimmer(),
                    //               const SizedBox(height: 0),
                    //             ],
                    //           ),
                    //         );

                    //       case "income_statement":
                    //         return SingleChildScrollView(
                    //           physics: NeverScrollableScrollPhysics(),
                    //           key: _keys[id],
                    //           child: Column(
                    //             children: [
                    //               const SizedBox(height: 10),
                    //               widget.financialResponseLoader == true
                    //                   ? CashDebtShimmer()
                    //                   : widget.financialResponse != null &&
                    //                         widget
                    //                                 .financialResponse!
                    //                                 .data
                    //                                 .financialsIncomeStatement
                    //                                 .chart
                    //                                 .researchDevelopment !=
                    //                             null
                    //                   ? CustomLineChart(
                    //                       lineColor: Colors.green,
                    //                       areaColor: Colors.greenAccent,
                    //                       title:
                    //                           "Income Statement for ${widget.symbol}",
                    //                       chartData: widget
                    //                           .financialResponse!
                    //                           .data
                    //                           .financialsIncomeStatement
                    //                           .chart
                    //                           .researchDevelopment!,
                    //                     )
                    //                   : SizedBox(),
                    //               const SizedBox(height: 20),
                    //               widget.financialResponseLoader == true
                    //                   ? TableShimmer(title: "Income Statement")
                    //                   : widget.financialResponse != null &&
                    //                         widget
                    //                             .financialResponse!
                    //                             .data
                    //                             .financialsIncomeStatement
                    //                             .data
                    //                             .isNotEmpty
                    //                   ? FinancialTable(
                    //                       chart: widget
                    //                           .financialResponse!
                    //                           .data
                    //                           .financialsIncomeStatement
                    //                           .chart,
                    //                       data: widget
                    //                           .financialResponse!
                    //                           .data
                    //                           .financialsIncomeStatement
                    //                           .data,
                    //                       itemName:
                    //                           FinancialTableEnum.incomeStatement,
                    //                     )
                    //                   : SizedBox(),
                    //             ],
                    //           ),
                    //         );

                    //       case "balance_sheet":
                    //         return SingleChildScrollView(
                    //           key: _keys[id],
                    //           physics: NeverScrollableScrollPhysics(),
                    //           child: Column(
                    //             children: [
                    //               const SizedBox(height: 10),
                    //               widget.financialResponseLoader == true
                    //                   ? CashDebtShimmer()
                    //                   : widget.financialResponse != null &&
                    //                         widget
                    //                                 .financialResponse!
                    //                                 .data
                    //                                 .financialsBalanceSheet
                    //                                 .chart
                    //                                 .totalAssets !=
                    //                             null
                    //                   ? CustomLineChart(
                    //                       lineColor: Colors.purpleAccent,
                    //                       areaColor: Colors.purple,
                    //                       title: "Balance Sheet for ${widget.symbol}",
                    //                       chartData: widget
                    //                           .financialResponse!
                    //                           .data
                    //                           .financialsBalanceSheet
                    //                           .chart
                    //                           .totalAssets!,
                    //                     )
                    //                   : SizedBox(),
                    //               const SizedBox(height: 20),
                    //               widget.financialResponseLoader == true
                    //                   ? TableShimmer(title: "Balance Sheet")
                    //                   : widget.financialResponse != null &&
                    //                         widget
                    //                             .financialResponse!
                    //                             .data
                    //                             .financialsBalanceSheet
                    //                             .data
                    //                             .isNotEmpty
                    //                   ? FinancialTable(
                    //                       chart: widget
                    //                           .financialResponse!
                    //                           .data
                    //                           .financialsBalanceSheet
                    //                           .chart,
                    //                       data: widget
                    //                           .financialResponse!
                    //                           .data
                    //                           .financialsBalanceSheet
                    //                           .data,
                    //                       itemName: FinancialTableEnum.balanceSheet,
                    //                     )
                    //                   : SizedBox(),
                    //             ],
                    //           ),
                    //         );

                    //       case "cash_flow":
                    //         return SingleChildScrollView(
                    //           physics: NeverScrollableScrollPhysics(),
                    //           key: _keys[id],
                    //           child: Column(
                    //             children: [
                    //               const SizedBox(height: 10),
                    //               widget.financialResponseLoader == true
                    //                   ? CashDebtShimmer()
                    //                   : widget.financialResponse != null &&
                    //                         widget
                    //                                 .financialResponse!
                    //                                 .data
                    //                                 .financialsCashFlow
                    //                                 .chart
                    //                                 .investments !=
                    //                             null
                    //                   ? CustomLineChart(
                    //                       lineColor: Colors.purpleAccent,
                    //                       areaColor: Colors.purple,
                    //                       title: "Cash Flow for ${widget.symbol}",
                    //                       chartData: widget
                    //                           .financialResponse!
                    //                           .data
                    //                           .financialsCashFlow
                    //                           .chart
                    //                           .investments!,
                    //                     )
                    //                   : SizedBox(),
                    //               const SizedBox(height: 20),
                    //               widget.financialResponseLoader == true
                    //                   ? TableShimmer(title: "Cash Flow ")
                    //                   : widget.financialResponse != null &&
                    //                         widget
                    //                             .financialResponse!
                    //                             .data
                    //                             .financialsCashFlow
                    //                             .data
                    //                             .isNotEmpty
                    //                   ? FinancialTable(
                    //                       chart: widget
                    //                           .financialResponse!
                    //                           .data
                    //                           .financialsCashFlow
                    //                           .chart,
                    //                       data: widget
                    //                           .financialResponse!
                    //                           .data
                    //                           .financialsCashFlow
                    //                           .data,
                    //                       itemName: FinancialTableEnum.cashFlow,
                    //                     )
                    //                   : SizedBox(),
                    //             ],
                    //           ),
                    //         );

                    //       default:
                    //         return Container(height: 600, color: Colors.grey);
                    //     }
                    //   },
                    // ),

                    // ⬅️ TAB VIEW — scrollable inside main scroll
                    SizedBox(
                      height:
                          MediaQuery.sizeOf(context).height *
                          1.5, // enough space for full content
                      child: TabBarView(
                        controller: financeialTabController,
                        physics:
                            NeverScrollableScrollPhysics(), // scroll parent handle karega
                        children: [
                          // TAB 1

                          // TAB 2
                          SingleChildScrollView(
                            physics: NeverScrollableScrollPhysics(),
                            child: Column(
                              children: [
                                SizedBox(height: 15),

                                widget.financialLoader == true
                                    ? CashDebtShimmer()
                                    : widget.financeChartsDataModel != null &&
                                          widget
                                                  .financeChartsDataModel!
                                                  .data
                                                  .cashAndDebt
                                                  .yearly !=
                                              null &&
                                          widget
                                              .financeChartsDataModel!
                                              .data
                                              .cashAndDebt
                                              .yearly!
                                              .metrics
                                              .isNotEmpty
                                    ? CashdebtWidgets(
                                        title: "Cash and Debt",
                                        cash: "Cash",
                                        debt: "Debt",
                                        rawCash:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .cashAndDebt
                                                .yearly!
                                                .metrics['Cash'] ??
                                            [],
                                        rawDebt:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .cashAndDebt
                                                .yearly!
                                                .metrics['Debt'] ??
                                            [],
                                      )
                                    : SizedBox(),
                                const SizedBox(height: 20),

                                widget.financialLoader == true
                                    ? CashDebtShimmer()
                                    : widget.financeChartsDataModel != null &&
                                          widget
                                                  .financeChartsDataModel!
                                                  .data
                                                  .assetsAndStockHolders
                                                  .yearly !=
                                              null &&
                                          widget
                                              .financeChartsDataModel!
                                              .data
                                              .assetsAndStockHolders
                                              .yearly!
                                              .metrics
                                              .isNotEmpty
                                    ? CashdebtWidgets(
                                        title: "Assets and Stockholders",
                                        cash: "Total Assets",
                                        debt: "Total StackHolder",
                                        rawCash:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .assetsAndStockHolders
                                                .yearly!
                                                .metrics["Total Assets"] ??
                                            [],
                                        rawDebt:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .assetsAndStockHolders
                                                .yearly!
                                                .metrics["Total StockHolder"] ??
                                            [],
                                      )
                                    : SizedBox(),
                                SizedBox(height: 20),
                                widget.financialLoader == true
                                    ? CashDebtShimmer()
                                    : widget.financeChartsDataModel != null &&
                                          widget
                                                  .financeChartsDataModel!
                                                  .data
                                                  .outstandingSharesBuyback
                                                  .yearly !=
                                              null &&
                                          widget
                                              .financeChartsDataModel!
                                              .data
                                              .outstandingSharesBuyback
                                              .yearly!
                                              .metrics
                                              .isNotEmpty
                                    ? CashdebtWidgets(
                                        title: "Outstanding Shares & Buyback",
                                        cash: "Outstanding Shares",
                                        debt: "Stock Buyback Percentage",
                                        rawCash:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .outstandingSharesBuyback
                                                .yearly!
                                                .metrics["Outstanding Shares"] ??
                                            [],
                                        rawDebt:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .outstandingSharesBuyback
                                                .yearly!
                                                .metrics["Stock Buyback Percentage"] ??
                                            [],
                                      )
                                    : SizedBox(),
                                // CashDebtShimmer(),
                                const SizedBox(height: 20),
                                widget.financialLoader == true
                                    ? CashDebtShimmer()
                                    : widget.financeChartsDataModel != null &&
                                          widget
                                                  .financeChartsDataModel!
                                                  .data
                                                  .revenueAndIncome
                                                  .yearly !=
                                              null &&
                                          widget
                                              .financeChartsDataModel!
                                              .data
                                              .revenueAndIncome
                                              .yearly!
                                              .metrics
                                              .isNotEmpty
                                    ? CashdebtWidgets(
                                        title: "Revenue and Income",
                                        cash: "Revenue",
                                        debt: "Income",
                                        rawCash:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .revenueAndIncome
                                                .yearly!
                                                .metrics["Revenue"] ??
                                            [],
                                        rawDebt:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .revenueAndIncome
                                                .yearly!
                                                .metrics["Income"] ??
                                            [],
                                      )
                                    : SizedBox(),
                                //  CashDebtShimmer(),
                                const SizedBox(height: 20),

                                widget.financeChartsDataModel != null &&
                                        widget
                                                .financeChartsDataModel!
                                                .data
                                                .cashFlowData
                                                .yearly !=
                                            null &&
                                        widget
                                            .financeChartsDataModel!
                                            .data
                                            .cashFlowData
                                            .yearly!
                                            .metrics
                                            .isNotEmpty
                                    ? OperatingCashFlow(
                                        title: "Cash Flow Data",
                                        rawCash:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .cashFlowData
                                                .yearly!
                                                .metrics["Operating Cash Flow"] ??
                                            [],
                                        rawDebt:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .cashFlowData
                                                .yearly!
                                                .metrics["Free Cash Flow"] ??
                                            [],
                                        rawAssets:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .cashFlowData
                                                .yearly!
                                                .metrics["Net Income"] ??
                                            [],
                                        rawEquity:
                                            widget
                                                .financeChartsDataModel!
                                                .data
                                                .cashFlowData
                                                .yearly!
                                                .metrics["Cash Flow Dividends"] ??
                                            [],
                                      )
                                    : SizedBox(),
                                // CashDebtShimmer(),
                                const SizedBox(height: 0),
                              ],
                            ),
                          ),

                          SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                widget.financialResponseLoader == true
                                    ? CashDebtShimmer()
                                    : widget.financialResponse != null &&
                                          widget
                                                  .financialResponse!
                                                  .data
                                                  .financialsIncomeStatement
                                                  .chart
                                                  .researchDevelopment !=
                                              null
                                    ? CustomLineChart(
                                        lineColor: Colors.green,
                                        areaColor: Colors.greenAccent,
                                        title:
                                            "Income Statement for ${widget.symbol}",
                                        chartData: widget
                                            .financialResponse!
                                            .data
                                            .financialsIncomeStatement
                                            .chart
                                            .researchDevelopment!,
                                      )
                                    : SizedBox(),
                                const SizedBox(height: 20),
                                widget.financialResponseLoader == true
                                    ? TableShimmer(title: "Income Statement")
                                    : widget.financialResponse != null &&
                                          widget
                                              .financialResponse!
                                              .data
                                              .financialsIncomeStatement
                                              .data
                                              .isNotEmpty
                                    ? FinancialTable(
                                        chart: widget
                                            .financialResponse!
                                            .data
                                            .financialsIncomeStatement
                                            .chart,
                                        data: widget
                                            .financialResponse!
                                            .data
                                            .financialsIncomeStatement
                                            .data,
                                        itemName:
                                            FinancialTableEnum.incomeStatement,
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),

                          SingleChildScrollView(
                            physics: NeverScrollableScrollPhysics(),

                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                widget.financialResponseLoader == true
                                    ? CashDebtShimmer()
                                    : widget.financialResponse != null &&
                                          widget
                                                  .financialResponse!
                                                  .data
                                                  .financialsBalanceSheet
                                                  .chart
                                                  .totalAssets !=
                                              null
                                    ? CustomLineChart(
                                        lineColor: Colors.purpleAccent,
                                        areaColor: Colors.purple,
                                        title:
                                            "Balance Sheet for ${widget.symbol}",
                                        chartData: widget
                                            .financialResponse!
                                            .data
                                            .financialsBalanceSheet
                                            .chart
                                            .totalAssets!,
                                      )
                                    : SizedBox(),
                                const SizedBox(height: 20),
                                widget.financialResponseLoader == true
                                    ? TableShimmer(title: "Balance Sheet")
                                    : widget.financialResponse != null &&
                                          widget
                                              .financialResponse!
                                              .data
                                              .financialsBalanceSheet
                                              .data
                                              .isNotEmpty
                                    ? FinancialTable(
                                        chart: widget
                                            .financialResponse!
                                            .data
                                            .financialsBalanceSheet
                                            .chart,
                                        data: widget
                                            .financialResponse!
                                            .data
                                            .financialsBalanceSheet
                                            .data,
                                        itemName:
                                            FinancialTableEnum.balanceSheet,
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                widget.financialResponseLoader == true
                                    ? CashDebtShimmer()
                                    : widget.financialResponse != null &&
                                          widget
                                                  .financialResponse!
                                                  .data
                                                  .financialsCashFlow
                                                  .chart
                                                  .investments !=
                                              null
                                    ? CustomLineChart(
                                        lineColor: Colors.purpleAccent,
                                        areaColor: Colors.purple,
                                        title: "Cash Flow for ${widget.symbol}",
                                        chartData: widget
                                            .financialResponse!
                                            .data
                                            .financialsCashFlow
                                            .chart
                                            .investments!,
                                      )
                                    : SizedBox(),
                                const SizedBox(height: 20),
                                widget.financialResponseLoader == true
                                    ? TableShimmer(title: "Cash Flow ")
                                    : widget.financialResponse != null &&
                                          widget
                                              .financialResponse!
                                              .data
                                              .financialsCashFlow
                                              .data
                                              .isNotEmpty
                                    ? FinancialTable(
                                        chart: widget
                                            .financialResponse!
                                            .data
                                            .financialsCashFlow
                                            .chart,
                                        data: widget
                                            .financialResponse!
                                            .data
                                            .financialsCashFlow
                                            .data,
                                        itemName: FinancialTableEnum.cashFlow,
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
