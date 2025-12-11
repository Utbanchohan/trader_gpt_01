import 'package:flutter/material.dart';

import '../../../../../../../shared/chart/lin_chart.dart';
import '../../../../../../../shared/widgets/cashdebt_shimmer_widgets.dart';
import '../../../../../../../shared/widgets/financialtable_widgets.dart';
import '../../../../../../../shared/widgets/table_shimmer.dart';
import '../../../../../domain/model/financial_data_model/financial_data_model.dart';

class FinancialTabIncomeStatement extends StatefulWidget {
  final bool financialResponseLoader;
  final FinancialResponse? financialResponse;
  final String symbol;
  final FinancialTabEnum financialTabEnum;

  const FinancialTabIncomeStatement({
    super.key,
    required this.financialResponseLoader,
    required this.symbol,
    required this.financialTabEnum,
    this.financialResponse,
  });

  @override
  State<FinancialTabIncomeStatement> createState() =>
      _FinancialTabIncomeStatementState();
}

class _FinancialTabIncomeStatementState
    extends State<FinancialTabIncomeStatement> {
  @override
  Widget build(BuildContext context) {
    return widget.financialTabEnum.value ==
            FinancialTabEnum.incomeStatement.value
        ? SingleChildScrollView(
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
                                  .financialsIncomeStatement
                                  .chart
                                  .researchDevelopment !=
                              null
                    ? CustomLineChart(
                        lineColor: Colors.green,
                        areaColor: Colors.greenAccent,
                        title: "Income Statement for ${widget.symbol}",
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
                        itemName: FinancialTableEnum.incomeStatement,
                      )
                    : SizedBox(),
              ],
            ),
          )
        : widget.financialTabEnum.value == FinancialTabEnum.balanceSheet.value
        ? SingleChildScrollView(
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
                        title: "Balance Sheet for ${widget.symbol}",
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
                        itemName: FinancialTableEnum.balanceSheet,
                      )
                    : SizedBox(),
              ],
            ),
          )
        : SingleChildScrollView(
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
          );
  }
}

enum FinancialTabEnum {
  incomeStatement('income_statement'),
  balanceSheet('balance_sheet'),
  cashFlow("cash_flow");

  final String value;
  const FinancialTabEnum(this.value);

  /// Optional: reverse lookup
  static FinancialTabEnum? fromValue(String value) {
    return FinancialTabEnum.values.firstWhere((e) => e.value == value);
  }
}
