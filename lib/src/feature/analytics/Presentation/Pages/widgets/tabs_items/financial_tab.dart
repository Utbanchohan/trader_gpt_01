import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/financial_tab_widgets.dart/financial_tab_income_statement.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/financial_tab_widgets.dart/financial_tab_summary.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../data/dto/financial_dto/financial_dto.dart';
import '../../../../data/dto/overview_dto/overview_dto.dart';
import '../../../../domain/model/financial_chart_data/financial_chart_data_model.dart';
import '../../../../domain/model/financial_data_model/financial_data_model.dart';
import '../../../provider/analytics_provider/analytics_provider.dart';

class FinancialTab extends ConsumerStatefulWidget {
  final String symbol;
  const FinancialTab({super.key, required this.symbol});

  @override
  ConsumerState<FinancialTab> createState() => _FinancialTabState();
}

class _FinancialTabState extends ConsumerState<FinancialTab> {
  int selectedItem = 0;
  bool financialLoader = true;
  FinanceDataResponse? financeChartsDataModel;
  bool financialResponseLoader = true;
  FinancialResponse? financialResponse;

  financialData(String symbol) async {
    try {
      financialResponseLoader = true;

      PriceRequestDto overview = PriceRequestDto(
        symbol: symbol,
        isYearly: true,
      );
      var res = ref.watch(financialDataProvider(overview));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              financialResponseLoader = false;
              financialResponse = value;
            }
          }
        case AsyncError(:final error):
          financialResponseLoader = false;
        case AsyncLoading():
          financialResponseLoader = true;
      }
    } catch (e) {
      financialResponseLoader = false;
    }
  }

  financialCharts(String symbol) async {
    try {
      financialLoader = true;

      SymbolDto symbols = SymbolDto(symbol: symbol);
      var res = ref.watch(financialChartsProvider(symbols));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              financialLoader = false;
              financeChartsDataModel = value;
            }
          }
        case AsyncError(:final error):
          financialLoader = false;
        case AsyncLoading():
          financialLoader = true;
      }
    } catch (e) {
      financialLoader = false;
      print(e);
    }
  }

  thirdTap(int val) async {
    if (val == 0) {
      if (financeChartsDataModel == null) {
        try {
          financialCharts(widget.symbol);
          if (!mounted) return;
          setState(() {});
        } catch (e) {
          print(e);
        }
      }
    } else {
      if (financialResponse == null) {
        try {
          await financialData(widget.symbol);
          if (!mounted) return;
          setState(() {});
        } catch (e) {
          print(e);
        }
      }
    }
  }

  final List<String> financialtabs = [
    "Summary",
    "Income Statement",
    "Balance Sheet",
    "Cash Flow",
  ];

  @override
  Widget build(BuildContext context) {
    thirdTap(0);
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
                        thirdTap(index);
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
                    financialLoader: financialLoader,
                    financeChartsDataModel: financeChartsDataModel,
                  )
                : selectedItem == 1
                ? FinancialTabIncomeStatement(
                    financialResponseLoader: financialResponseLoader,
                    symbol: widget.symbol,
                    financialResponse: financialResponse,
                    financialTabEnum: FinancialTabEnum.balanceSheet,
                  )
                : selectedItem == 2
                ? FinancialTabIncomeStatement(
                    financialResponseLoader: financialResponseLoader,
                    symbol: widget.symbol,
                    financialResponse: financialResponse,
                    financialTabEnum: FinancialTabEnum.incomeStatement,
                  )
                : selectedItem == 3
                ? FinancialTabIncomeStatement(
                    financialResponseLoader: financialResponseLoader,
                    symbol: widget.symbol,
                    financialResponse: financialResponse,
                    financialTabEnum: FinancialTabEnum.cashFlow,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
