import 'package:flutter/material.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/operating_cash_flow.dart';

import '../../../../../../../shared/widgets/cashdebt_shimmer_widgets.dart';
import '../../../../../../../shared/widgets/cashdebt_widgets.dart';
import '../../../../../domain/model/financial_chart_data/financial_chart_data_model.dart';

class FinancialTabSummary extends StatefulWidget {
  final bool financialLoader;
  final FinanceDataResponse? financeChartsDataModel;

  const FinancialTabSummary({
    super.key,
    required this.financialLoader,
    this.financeChartsDataModel,
  });

  @override
  State<FinancialTabSummary> createState() => _FinancialTabSummaryState();
}

class _FinancialTabSummaryState extends State<FinancialTabSummary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),

        widget.financialLoader == true
            ? CashDebtShimmer()
            : widget.financeChartsDataModel != null &&
                  widget.financeChartsDataModel!.data.cashAndDebt.yearly !=
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
                  widget.financeChartsDataModel!.data.revenueAndIncome.yearly !=
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
                widget.financeChartsDataModel!.data.cashFlowData.yearly !=
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
    );
  }
}
