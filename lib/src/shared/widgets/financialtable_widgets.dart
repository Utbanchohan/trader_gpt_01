import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/financial_data_model/financial_data_model.dart';

class FinancialTable extends StatelessWidget {
  final Map<String, YearlyFinancialData> data;
  final FinancialTableEnum? itemName;

  const FinancialTable({super.key, required this.data, required this.itemName});

  @override
  Widget build(BuildContext context) {
    final rows = [
      {
        "color": Colors.purpleAccent,
        "title": "Research Development",
        "values": ["29,510", "27,195", "0", "24,512"],
        "growth": ["8.51%", "10.95%", "0%", "18.32%"],
        "growthColors": [
          AppColors.color06D54E,
          AppColors.color06D54E,
          AppColors.color0xFFCD3438,
          AppColors.color06D54E,
        ],
      },
      {
        "color": Colors.blueAccent,
        "title": "Effect Of Accounting Charges",
        "values": ["0", "0", "0", "0"],
        "growth": ["0%", "0%", "0%", "0%"],
        "growthColors": [
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
        ],
      },
      {
        "color": Colors.orangeAccent,
        "title": "Income Before Tax",
        "values": ["107,787", "89,311", "0", "83,716"],
        "growth": ["20.69%", "6.66%", "0%", "17.63%"],
        "growthColors": [
          AppColors.color06D54E,
          AppColors.color06D54E,
          AppColors.color0xFFCD3438,
          AppColors.color06D54E,
        ],
      },
      {
        "color": AppColors.color06D54E,
        "title": "Minority Interest",
        "values": ["0", "0", "0", "0"],
        "growth": ["0%", "0%", "0%", "0%"],
        "growthColors": [
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
        ],
      },
    ];

    List<String> cashFLowList = [
      "Investments",
      "Change To Liabilities",
      "Total Cashflows From Investing Activities",
      "Net Borrowings",
      "Total Cash From Financing Activities",
      "Change To Operating Activities",
      "Net Income",
      "Change In Cash",
      "Begin Period Cash Flow",
      "End Period Cash Flow",
      "Total Cash From Operating Activities",
      "Issuance Of Capital Stock",
      "Depreciation",
      "Other Cashflows From Investing Activities",
      "Dividends Paid",
      "Change To Inventory",
      "Change To Account Receivables",
      "Sale Purchase Of Stock",
      "Other Cashflows From Financing Activities",
      "Change To Netincome",
      "Capital Expenditures",
      "Change Receivables",
      "Cash Flows Other Operating",
      "Exchange Rate Changes",
      "Cash And Cash Equivalents Changes",
      "Change In Working Capital",
      "Stock Based Compensation",
      "Other Non Cash Items",
      "Free Cash Flow",
    ];

    List<String> balanceSheet = [
      "Total Assets",
      "Intangible Assets",
      "Earning Assets",
      "Other Current Assets",
      "Total Liab",
      "Total Stockholder Equity",
      "Deferred Long Term Liab",
      "Other Current Liab",
      "Common Stock",
      "Capital Stock",
      "Retained Earnings",
      "Other Liab",
      "Good Will",
      "Other Assets",
      "Cash",
      "Cash And Equivalents",
      "Total Current Liabilities",
      "Current Deferred Revenue",
      "Net Debt",
      "Short Term Debt",
      "Property Plant Equipment",
      "Total Current Assets",
      "Long Term Investments",
      "Net Tangible Assets",
      "Short Term Investments",
      "Net Receivables",
      "Long Term Debt",
      "Inventory",
      "Accounts Payable",
      "Total Permanent Equity",
      "Noncontrolling Interest In Consolidated Entity",
      "Temporary Equity Redeemable Noncontrolling Interests",
      "Accumulated Other Comprehensive Income",
      "Additional Paid In Capital",
      "Common Stock Total Equity",
      "Preferred Stock Total Equity",
      "Retained Earnings Total Equity",
      "Treasury Stock",
      "Accumulated Amortization",
      "Non Current Assets Other",
      "Deferred Long Term Asset Charges",
      "Non Current Assets Total",
      "Capital Lease Obligations",
      "Long Term Debt Total",
      "Non Current Liabilities Other",
      "Non Current Liabilities Total",
      "Negative Goodwill",
      "Warrants",
      "Preferred Stock Redeemable",
      "Capital Surplus",
      "Liabilities And Stockholders Equity",
      "Cash And Short Term Investments",
      "Property Plant And Equipment Gross",
      "Property Plant And Equipment Net",
      "Accumulated Depreciation",
      "Net Working Capital",
      "Net Invested Capital",
      "Common Stock Shares Outstanding",
    ];

    List<String> incomeStatement = [
      "Research Development",
      "Effect Of Accounting Charges",
      "Income Before Tax",
      "Minority Interest",
      "Net Income",
      "Selling General Administrative",
      "Selling And Marketing Expenses",
      "Gross Profit",
      "Reconciled Depreciation",
      "Ebit",
      "Ebitda",
      "Depreciation And Amortization",
      "Non Operating Income Net Other",
      "Operating Income",
      "Other Operating Expenses",
      "Interest Expense",
      "Tax Provision",
      "Interest Income",
      "Net Interest Income",
      "Extraordinary Items",
      "Non Recurring",
      "Other Items",
      "Income Tax Expense",
      "Total Revenue",
      "Total Operating Expenses",
      "Cost Of Revenue",
      "Total Other Income Expense Net",
      "Discontinued Operations",
      "Net Income From Continuing Ops",
      "Net Income Applicable To Common Shares",
      "Preferred Stock And Other Adjustments",
    ];

    final Map<String, Map<String, dynamic>> formattedData = {};
    Map<String, Map<String, dynamic>> extractIncomeData(
      Map<String, YearlyFinancialData> yearlyData,
    ) {
      yearlyData.forEach((year, data) {
        formattedData[year] = {
          "Research Development": data.researchDevelopment,
          "Effect Of Accounting Charges": data.effectOfAccountingCharges,
          "Income Before Tax": data.incomeBeforeTax,
          "Minority Interest": data.minorityInterest,
          "Net Income": data.netIncome,
          "Selling General Administrative": data.sellingGeneralAdministrative,
          "Selling And Marketing Expenses": data.sellingAndMarketingExpenses,
          "Gross Profit": data.grossProfit,
          "Reconciled Depreciation": data.reconciledDepreciation,
          "Ebit": data.ebit,
          "Ebitda": data.ebitda,
          "Depreciation And Amortization": data.depreciationAndAmortization,
          "Non Operating Income Net Other": data.nonOperatingIncomeNetOther,
          "Operating Income": data.operatingIncome,
          "Other Operating Expenses": data.otherOperatingExpenses,
          "Interest Expense": data.interestExpense,
          "Tax Provision": data.taxProvision,
          "Interest Income": data.interestIncome,
          "Net Interest Income": data.netInterestIncome,
          "Extraordinary Items": data.extraordinaryItems,
          "Non Recurring": data.nonRecurring,
          "Other Items": data.otherItems,
          "Income Tax Expense": data.incomeTaxExpense,
          "Total Revenue": data.totalRevenue,
          "Total Operating Expenses": data.totalOperatingExpenses,
          "Cost Of Revenue": data.costOfRevenue,
          "Total Other Income Expense Net": data.totalOtherIncomeExpenseNet,
          "Discontinued Operations": data.discontinuedOperations,
          "Net Income From Continuing Ops": data.netIncomeFromContinuingOps,
          "Net Income Applicable To Common Shares":
              data.netIncomeApplicableToCommonShares,
          "Preferred Stock And Other Adjustments":
              data.preferredStockAndOtherAdjustments,
        };
      });

      return formattedData;
    }

    final Map<String, Map<String, dynamic>> formattedDataBalanceSheet = {};
    Map<String, Map<String, dynamic>> extractBalanceSheet(
      Map<String, YearlyFinancialData> yearlyData,
    ) {
      yearlyData.forEach((year, data) {
        formattedDataBalanceSheet[year] = {
          "Total Assets": data.totalAssets,
          "Intangible Assets": data.intangibleAssets,
          "Earning Assets": data.earningAssets,
          "Other Current Assets": data.otherAssets,
          "Total Liab": data.totalLiab,
          "Total Stockholder Equity": data.totalStockholderEquity,
          "Deferred Long Term Liab": data.deferredLongTermLiab,
          "Other Current Liab": data.otherCurrentLiab,
          "Common Stock": data.commonStock,
          "Capital Stock": data.capitalStock,
          "Retained Earnings": data.retainedEarnings,
          "Other Liab": data.otherLiab,
          "Good Will": data.goodWill,
          "Other Assets": data.otherAssets,
          "Cash": data.cash,
          "Cash And Equivalents": data.cashAndEquivalents,
          "Total Current Liabilities": data.totalCurrentLiabilities,
          "Current Deferred Revenue": data.currentDeferredRevenue,
          "Net Debt": data.netDebt,
          "Short Term Debt": data.shortLongTermDebt,
          "Property Plant Equipment": data.propertyPlantEquipment,
          "Total Current Assets": data.totalCurrentAssets,
          "Long Term Investments": data.longTermInvestments,
          "Net Tangible Assets": data.netTangibleAssets,
          "Short Term Investments": data.shortTermInvestments,
          "Net Receivables": data.netReceivables,
          "Long Term Debt": data.longTermDebt,
          "Inventory": data.inventory,
          "Accounts Payable": data.accountsPayable,
          "Total Permanent Equity": data.totalPermanentEquity,
          "Noncontrolling Interest In Consolidated Entity":
              data.noncontrollingInterestInConsolidatedEntity,
          "Temporary Equity Redeemable Noncontrolling Interests":
              data.temporaryEquityRedeemableNoncontrollingInterests,
          "Accumulated Other Comprehensive Income":
              data.accumulatedOtherComprehensiveIncome,
          "Additional Paid In Capital": data.additionalPaidInCapital,
          "Common Stock Total Equity": data.commonStockTotalEquity,
          "Preferred Stock Total Equity": data.preferredStockTotalEquity,
          "Retained Earnings Total Equity": data.retainedEarningsTotalEquity,
          "Treasury Stock": data.treasuryStock,
          "Accumulated Amortization": data.accumulatedAmortization,
          "Non Current Assets Other": data.nonCurrrentAssetsOther,
          "Deferred Long Term Asset Charges": data.deferredLongTermAssetCharges,
          "Non Current Assets Total": data.nonCurrentAssetsTotal,
          "Capital Lease Obligations": data.capitalLeaseObligations,
          "Long Term Debt Total": data.longTermDebtTotal,
          "Non Current Liabilities Other": data.nonCurrentLiabilitiesOther,
          "Non Current Liabilities Total": data.nonCurrentLiabilitiesTotal,
          "Negative Goodwill": data.negativeGoodwill,
          "Warrants": data.warrants,
          "Preferred Stock Redeemable": data.preferredStockRedeemable,
          "Capital Surplus": data.capitalSurpluse,
          "Liabilities And Stockholders Equity":
              data.liabilitiesAndStockholdersEquity,
          "Cash And Short Term Investments": data.cashAndShortTermInvestments,
          "Property Plant And Equipment Gross":
              data.propertyPlantAndEquipmentGross,
          "Property Plant And Equipment Net": data.propertyPlantAndEquipmentNet,
          "Accumulated Depreciation": data.accumulatedDepreciation,
          "Net Working Capital": data.netWorkingCapital,
          "Net Invested Capital": data.netInvestedCapital,
          "Common Stock Shares Outstanding": data.commonStockSharesOutstanding,
        };
      });

      return formattedDataBalanceSheet;
    }

    final Map<String, Map<String, dynamic>> formattedDataCashFLow = {};
    Map<String, Map<String, dynamic>> extractCashFlow(
      Map<String, YearlyFinancialData> yearlyData,
    ) {
      yearlyData.forEach((year, data) {
        formattedDataCashFLow[year] = {
          "Investments": data.investments,
          "Change To Liabilities": data.changeToLiabilities,
          "Total Cashflows From Investing Activities":
              data.totalCashflowsFromInvestingActivities,
          "Net Borrowings": data.netBorrowings,
          "Total Cash From Financing Activities":
              data.totalCashFromFinancingActivities,
          "Change To Operating Activities": data.changeToOperatingActivities,
          "Net Income": data.netIncome,
          "Change In Cash": data.changeInCash,
          "Begin Period Cash Flow": data.beginPeriodCashFlow,
          "End Period Cash Flow": data.endPeriodCashFlow,
          "Total Cash From Operating Activities":
              data.totalCashFromOperatingActivities,
          "Issuance Of Capital Stock": data.issuanceOfCapitalStock,
          "Depreciation": data.depreciation,
          "Other Cashflows From Investing Activities":
              data.otherCashflowsFromFinancingActivities,
          "Dividends Paid": data.dividendsPaid,
          "Change To Inventory": data.changeToInventory,
          "Change To Account Receivables": data.changeToAccountReceivables,
          "Sale Purchase Of Stock": data.salePurchaseOfStock,
          "Other Cashflows From Financing Activities":
              data.otherCashflowsFromFinancingActivities,
          "Change To Netincome": data.changeToNetincome,
          "Capital Expenditures": data.capitalExpenditures,
          "Change Receivables": data.changeReceivables,
          "Cash Flows Other Operating": data.cashFlowsOtherOperating,
          "Exchange Rate Changes": data.exchangeRateChanges,
          "Cash And Cash Equivalents Changes": data.changeInWorkingCapital,
          "Change In Working Capital": data.changeInWorkingCapital,
          "Stock Based Compensation": data.stockBasedCompensation,
          "Other Non Cash Items": data.otherNonCashItems,
          "Free Cash Flow": data.freeCashFlow,
        };
      });

      return formattedDataCashFLow;
    }

    List<String> keys = [];
    data.keys.forEach((key) {
      keys.add(key);
    });

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 20,
          horizontalMargin: 0,
          dataRowMaxHeight: 60.h,
          headingRowColor: WidgetStateProperty.resolveWith<Color?>((
            Set<WidgetState> states,
          ) {
            return AppColors.color1B254B;
          }),
          columns: [
            DataColumn(
              label: MdSnsText(
                "",
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                "Values in USD",
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                _formatDate(keys[0]),
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                _formatDate(keys[1]),
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                _formatDate(keys[2]),
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                _formatDate(keys[3]),
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                _formatDate(keys[4]),
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                'Growth',
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
          ],
          rows: itemName!.value == FinancialTableEnum.cashFlow.value
              ? cashFLowList.asMap().entries.map((entry) {
                  final index = entry.key;
                  final item = entry.value;

                  // 🔹 4 different colors list
                  final List<Color> lineColors = [
                    Colors.purpleAccent,
                    Colors.blueAccent,
                    Colors.orangeAccent,
                    AppColors.color06D54E,
                  ];

                  // 🔹 Pick color according to row index (repeats if more than 4 rows)
                  final color = lineColors[index % lineColors.length];
                  return DataRow(
                    cells: [
                      DataCell(Container(width: 2, height: 40, color: color)),
                      DataCell(
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MdSnsText(
                                item,
                                variant: TextVariant.h4,
                                textAlign: TextAlign.start,
                                maxLines: 3,
                                fontWeight: TextFontWeightVariant.h2,
                                color: AppColors.white,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 2.h),
                              MdSnsText(
                                "Growth YoY",
                                variant: TextVariant.h8,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors.color0xB3FFFFFF,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractCashFlow(data)[keys[0]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractCashFlow(data)[keys[0]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractCashFlow(data)[keys[0]]![item][1] !=
                                          null &&
                                      extractCashFlow(data)[keys[0]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractCashFlow(data)[keys[1]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractCashFlow(data)[keys[1]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractCashFlow(data)[keys[1]]![item][1] !=
                                          null &&
                                      extractCashFlow(data)[keys[1]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractCashFlow(data)[keys[2]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractCashFlow(data)[keys[2]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractCashFlow(data)[keys[2]]![item][1] !=
                                          null &&
                                      extractCashFlow(data)[keys[2]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),

                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractCashFlow(data)[keys[3]]![item][0],
                              ),
                              textAlign: TextAlign.center,
                              color: AppColors.white,
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractCashFlow(data)[keys[3]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractCashFlow(data)[keys[3]]![item][1] !=
                                          null &&
                                      extractCashFlow(data)[keys[3]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractCashFlow(data)[keys[4]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractCashFlow(data)[keys[4]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractCashFlow(data)[keys[4]]![item][1] !=
                                          null &&
                                      extractCashFlow(data)[keys[4]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        MdSnsText(
                          "",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.color0098E4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  );
                }).toList()
              : itemName!.value == FinancialTableEnum.incomeStatement.value
              ? incomeStatement.asMap().entries.map((entry) {
                  final index = entry.key;
                  final item = entry.value;

                  // 🔹 4 different colors list
                  final List<Color> lineColors = [
                    Colors.purpleAccent,
                    Colors.blueAccent,
                    Colors.orangeAccent,
                    AppColors.color06D54E,
                  ];

                  // 🔹 Pick color according to row index (repeats if more than 4 rows)
                  final color = lineColors[index % lineColors.length];
                  return DataRow(
                    cells: [
                      DataCell(Container(width: 1, height: 40, color: color)),
                      DataCell(
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MdSnsText(
                                item,
                                variant: TextVariant.h4,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors.white,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                              SizedBox(height: 2.h),
                              MdSnsText(
                                "Growth YoY",
                                variant: TextVariant.h8,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors.color0xB3FFFFFF,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractIncomeData(data)[keys[0]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractIncomeData(data)[keys[0]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractIncomeData(data)[keys[0]]![item][1] !=
                                          null &&
                                      extractIncomeData(
                                            data,
                                          )[keys[0]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractIncomeData(data)[keys[1]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractIncomeData(data)[keys[1]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractIncomeData(data)[keys[1]]![item][1] !=
                                          null &&
                                      extractIncomeData(
                                            data,
                                          )[keys[1]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractIncomeData(data)[keys[2]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractIncomeData(data)[keys[2]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractIncomeData(data)[keys[2]]![item][1] !=
                                          null &&
                                      extractIncomeData(
                                            data,
                                          )[keys[2]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),

                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractIncomeData(data)[keys[3]]![item][0],
                              ),
                              textAlign: TextAlign.center,
                              color: AppColors.white,
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractIncomeData(data)[keys[3]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractIncomeData(data)[keys[3]]![item][1] !=
                                          null &&
                                      extractIncomeData(
                                            data,
                                          )[keys[3]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractIncomeData(data)[keys[4]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractIncomeData(data)[keys[4]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractIncomeData(data)[keys[4]]![item][1] !=
                                          null &&
                                      extractIncomeData(
                                            data,
                                          )[keys[4]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        MdSnsText(
                          "f",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.color0098E4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  );
                }).toList()
              : balanceSheet.asMap().entries.map((entry) {
                  final index = entry.key;
                  final item = entry.value;

                  // 🔹 4 different colors list
                  final List<Color> lineColors = [
                    Colors.purpleAccent,
                    Colors.blueAccent,
                    Colors.orangeAccent,
                    AppColors.color06D54E,
                  ];

                  // 🔹 Pick color according to row index (repeats if more than 4 rows)
                  final color = lineColors[index % lineColors.length];
                  return DataRow(
                    cells: [
                      DataCell(Container(width: 2, height: 40, color: color)),
                      DataCell(
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MdSnsText(
                                item,
                                variant: TextVariant.h4,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors.white,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 2.h),
                              MdSnsText(
                                "Growth YoY",
                                variant: TextVariant.h8,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors.color0xB3FFFFFF,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractBalanceSheet(data)[keys[0]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractBalanceSheet(
                                      data,
                                    )[keys[0]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractBalanceSheet(
                                            data,
                                          )[keys[0]]![item][1] !=
                                          null &&
                                      extractBalanceSheet(
                                            data,
                                          )[keys[0]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractBalanceSheet(data)[keys[1]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractBalanceSheet(
                                      data,
                                    )[keys[1]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractBalanceSheet(
                                            data,
                                          )[keys[1]]![item][1] !=
                                          null &&
                                      extractBalanceSheet(
                                            data,
                                          )[keys[1]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractBalanceSheet(data)[keys[2]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractBalanceSheet(
                                      data,
                                    )[keys[2]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractBalanceSheet(
                                            data,
                                          )[keys[2]]![item][1] !=
                                          null &&
                                      extractBalanceSheet(
                                            data,
                                          )[keys[2]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),

                      DataCell(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractBalanceSheet(data)[keys[3]]![item][0],
                              ),
                              textAlign: TextAlign.center,
                              color: AppColors.white,
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractBalanceSheet(
                                      data,
                                    )[keys[3]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractBalanceSheet(
                                            data,
                                          )[keys[3]]![item][1] !=
                                          null &&
                                      extractBalanceSheet(
                                            data,
                                          )[keys[3]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MdSnsText(
                              formatNumbers(
                                extractBalanceSheet(data)[keys[4]]![item][0],
                              ),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            MdSnsText(
                              formatNumbers(
                                    extractBalanceSheet(
                                      data,
                                    )[keys[4]]![item][1],
                                  ) +
                                  "%",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h2,
                              color:
                                  extractBalanceSheet(
                                            data,
                                          )[keys[4]]![item][1] !=
                                          null &&
                                      extractBalanceSheet(
                                            data,
                                          )[keys[4]]![item][1] >
                                          0
                                  ? AppColors.color00FF55
                                  : AppColors.redFF3B3B,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        MdSnsText(
                          "",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.color0098E4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  );
                }).toList(),
        ),
      ),
    );
  }
}

enum FinancialTableEnum {
  incomeStatement('incomeStatement'),
  balanceSheet('balanceSheet'),
  cashFlow('cashFlow');

  final String value;
  const FinancialTableEnum(this.value);

  /// Optional: reverse lookup
  static FinancialTableEnum? fromValue(String value) {
    return FinancialTableEnum.values.firstWhere((e) => e.value == value);
  }
}

String formatNumbers(num? number) {
  if (number != null) {
    String formatted = NumberFormat.decimalPattern().format(number);
    return formatted;
  } else {
    return "0";
  }
}

String _formatDate(String date) {
  try {
    final inputFormat = DateFormat('yyyy-MM-dd');
    final outputFormat = DateFormat('MMM dd,yyyy');

    final parsedDate = inputFormat.parse(date);
    final formatted = outputFormat.format(parsedDate);
    return formatted;
  } catch (_) {
    return '-';
  }
}
