import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/operating_cash_flow.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/financial_tab_widgets.dart/financial_tab_income_statement.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/financial_tab_widgets.dart/financial_tab_summary.dart';

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
  int selectedItem = 0;

  final List<String> financialtabs = [
    "Summary",
    "Income Statement",
    "Balance Sheet",
    "Cash Flow",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(4, (index) {
                  final tabTitles = financialtabs;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.onPressed(index.toString());
                        selectedItem = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
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
                        color: selectedItem == index
                            ? AppColors.color203063
                            : Colors.transparent,
                      ),
                      child: MdSnsText(
                        tabTitles[index],
                        color: selectedItem == index
                            ? AppColors.white
                            : AppColors.color677FA4,
                        variant: selectedItem == index
                            ? TextVariant.h2
                            : TextVariant.h3,
                        fontWeight: selectedItem == index
                            ? TextFontWeightVariant.h1
                            : TextFontWeightVariant.h4,
                      ),
                    ),
                  );
                }),
              ),
            ),
            selectedItem == 0
                ? FinancialTabSummary(
                    financialLoader: widget.financialLoader,
                    financeChartsDataModel: widget.financeChartsDataModel,
                  )
                : selectedItem == 1
                ? FinancialTabIncomeStatement(
                    financialResponseLoader: widget.financialResponseLoader,
                    symbol: widget.symbol,
                    financialResponse: widget.financialResponse,
                    financialTabEnum: FinancialTabEnum.balanceSheet,
                  )
                : selectedItem == 2
                ? FinancialTabIncomeStatement(
                    financialResponseLoader: widget.financialResponseLoader,
                    symbol: widget.symbol,
                    financialResponse: widget.financialResponse,
                    financialTabEnum: FinancialTabEnum.incomeStatement,
                  )
                : selectedItem == 3
                ? FinancialTabIncomeStatement(
                    financialResponseLoader: widget.financialResponseLoader,
                    symbol: widget.symbol,
                    financialResponse: widget.financialResponse,
                    financialTabEnum: FinancialTabEnum.cashFlow,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
