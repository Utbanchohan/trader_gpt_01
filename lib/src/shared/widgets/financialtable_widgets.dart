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

    final yearlyMap2024 = data["2024-12-31"]!.toJson();
    final yearlyMap12024 = Map.from(yearlyMap2024)
      ..removeWhere(
        (key, value) =>
            value == "[null,null]" ||
            value == "null" ||
            value == null ||
            value.toString().contains("null"),
      );
    final yearlyMap2023 = data["2023-12-31"]!.toJson();
    final yearlyMap12023 = Map.from(yearlyMap2023)
      ..removeWhere(
        (key, value) =>
            value == "[null,null]" ||
            value == "null" ||
            value == null ||
            value.toString().contains("null"),
      );
    final yearlyMap2022 = data["2022-12-31"]!.toJson();
    final yearlyMap12022 = Map.from(yearlyMap2022)
      ..removeWhere(
        (key, value) =>
            value == "[null,null]" ||
            value == "null" ||
            value == null ||
            value.toString().contains("null"),
      );
    final yearlyMap2021 = data["2021-12-31"]!.toJson();
    final yearlyMap12021 = Map.from(yearlyMap2021)
      ..removeWhere(
        (key, value) =>
            value == "[null,null]" ||
            value == "null" ||
            value == null ||
            value.toString().contains("null"),
      );
    final yearlyMap2020 = data["2020-12-31"]!.toJson();
    final yearlyMap12020 = Map.from(yearlyMap2020)
      ..removeWhere(
        (key, value) =>
            value == "[null,null]" ||
            value == "null" ||
            value == null ||
            value.toString().contains("null"),
      );

    Map<String, Map<String, dynamic>> extractIncomeData(
      Map<String, YearlyFinancialData> yearlyData,
    ) {
      final data = {
        "2024-12-31": {
          "Research Development": yearlyData["2024-12-31"]!.researchDevelopment,
          "Effect Of Accounting Charges":
              yearlyData["2024-12-31"]!.effectOfAccountingCharges,
          "Income Before Tax": yearlyData["2024-12-31"]!.incomeBeforeTax,
          "Minority Interest": yearlyData["2024-12-31"]!.minorityInterest,
          "Net Income": yearlyData["2024-12-31"]!.netIncome,
          "Selling General Administrative":
              yearlyData["2024-12-31"]!.sellingGeneralAdministrative,
          "Selling And Marketing Expenses":
              yearlyData["2024-12-31"]!.sellingAndMarketingExpenses,
          "Gross Profit": yearlyData["2024-12-31"]!.grossProfit,
          "Reconciled Depreciation":
              yearlyData["2024-12-31"]!.reconciledDepreciation,
          "Ebit": yearlyData["2024-12-31"]!.ebit,
          "Ebitda": yearlyData["2024-12-31"]!.ebitda,
          "Depreciation And Amortization":
              yearlyData["2024-12-31"]!.depreciationAndAmortization,
          "Non Operating Income Net Other":
              yearlyData["2024-12-31"]!.nonOperatingIncomeNetOther,
          "Operating Income": yearlyData["2024-12-31"]!.operatingIncome,
          "Other Operating Expenses":
              yearlyData["2024-12-31"]!.otherOperatingExpenses,
          "Interest Expense": yearlyData["2024-12-31"]!.interestExpense,
          "Tax Provision": yearlyData["2024-12-31"]!.taxProvision,
          "Interest Income": yearlyData["2024-12-31"]!.interestIncome,
          "Net Interest Income": yearlyData["2024-12-31"]!.netInterestIncome,
          "Extraordinary Items": yearlyData["2024-12-31"]!.extraordinaryItems,
          "Non Recurring": yearlyData["2024-12-31"]!.nonRecurring,
          "Other Items": yearlyData["2024-12-31"]!.otherItems,
          "Income Tax Expense": yearlyData["2024-12-31"]!.incomeTaxExpense,
          "Total Revenue": yearlyData["2024-12-31"]!.totalRevenue,
          "Total Operating Expenses":
              yearlyData["2024-12-31"]!.totalOperatingExpenses,
          "Cost Of Revenue": yearlyData["2024-12-31"]!.costOfRevenue,
          "Total Other Income Expense Net":
              yearlyData["2024-12-31"]!.totalOtherIncomeExpenseNet,
          "Discontinued Operations":
              yearlyData["2024-12-31"]!.discontinuedOperations,
          "Net Income From Continuing Ops":
              yearlyData["2024-12-31"]!.netIncomeFromContinuingOps,
          "Net Income Applicable To Common Shares":
              yearlyData["2024-12-31"]!.netIncomeApplicableToCommonShares,
          "Preferred Stock And Other Adjustments":
              yearlyData["2024-12-31"]!.preferredStockAndOtherAdjustments,
        },
        "2023-12-31": {
          "Research Development": yearlyData["2023-12-31"]!.researchDevelopment,
          "Effect Of Accounting Charges":
              yearlyData["2023-12-31"]!.effectOfAccountingCharges,
          "Income Before Tax": yearlyData["2023-12-31"]!.incomeBeforeTax,
          "Minority Interest": yearlyData["2023-12-31"]!.minorityInterest,
          "Net Income": yearlyData["2023-12-31"]!.netIncome,
          "Selling General Administrative":
              yearlyData["2023-12-31"]!.sellingGeneralAdministrative,
          "Selling And Marketing Expenses":
              yearlyData["2023-12-31"]!.sellingAndMarketingExpenses,
          "Gross Profit": yearlyData["2023-12-31"]!.grossProfit,
          "Reconciled Depreciation":
              yearlyData["2023-12-31"]!.reconciledDepreciation,
          "Ebit": yearlyData["2023-12-31"]!.ebit,
          "Ebitda": yearlyData["2023-12-31"]!.ebitda,
          "Depreciation And Amortization":
              yearlyData["2023-12-31"]!.depreciationAndAmortization,
          "Non Operating Income Net Other":
              yearlyData["2023-12-31"]!.nonOperatingIncomeNetOther,
          "Operating Income": yearlyData["2023-12-31"]!.operatingIncome,
          "Other Operating Expenses":
              yearlyData["2023-12-31"]!.otherOperatingExpenses,
          "Interest Expense": yearlyData["2023-12-31"]!.interestExpense,
          "Tax Provision": yearlyData["2023-12-31"]!.taxProvision,
          "Interest Income": yearlyData["2023-12-31"]!.interestIncome,
          "Net Interest Income": yearlyData["2023-12-31"]!.netInterestIncome,
          "Extraordinary Items": yearlyData["2023-12-31"]!.extraordinaryItems,
          "Non Recurring": yearlyData["2023-12-31"]!.nonRecurring,
          "Other Items": yearlyData["2023-12-31"]!.otherItems,
          "Income Tax Expense": yearlyData["2023-12-31"]!.incomeTaxExpense,
          "Total Revenue": yearlyData["2023-12-31"]!.totalRevenue,
          "Total Operating Expenses":
              yearlyData["2023-12-31"]!.totalOperatingExpenses,
          "Cost Of Revenue": yearlyData["2023-12-31"]!.costOfRevenue,
          "Total Other Income Expense Net":
              yearlyData["2023-12-31"]!.totalOtherIncomeExpenseNet,
          "Discontinued Operations":
              yearlyData["2023-12-31"]!.discontinuedOperations,
          "Net Income From Continuing Ops":
              yearlyData["2023-12-31"]!.netIncomeFromContinuingOps,
          "Net Income Applicable To Common Shares":
              yearlyData["2023-12-31"]!.netIncomeApplicableToCommonShares,
          "Preferred Stock And Other Adjustments":
              yearlyData["2023-12-31"]!.preferredStockAndOtherAdjustments,
        },
        "2022-12-31": {
          "Research Development": yearlyData["2022-12-31"]!.researchDevelopment,
          "Effect Of Accounting Charges":
              yearlyData["2022-12-31"]!.effectOfAccountingCharges,
          "Income Before Tax": yearlyData["2022-12-31"]!.incomeBeforeTax,
          "Minority Interest": yearlyData["2022-12-31"]!.minorityInterest,
          "Net Income": yearlyData["2022-12-31"]!.netIncome,
          "Selling General Administrative":
              yearlyData["2022-12-31"]!.sellingGeneralAdministrative,
          "Selling And Marketing Expenses":
              yearlyData["2022-12-31"]!.sellingAndMarketingExpenses,
          "Gross Profit": yearlyData["2022-12-31"]!.grossProfit,
          "Reconciled Depreciation":
              yearlyData["2022-12-31"]!.reconciledDepreciation,
          "Ebit": yearlyData["2022-12-31"]!.ebit,
          "Ebitda": yearlyData["2022-12-31"]!.ebitda,
          "Depreciation And Amortization":
              yearlyData["2022-12-31"]!.depreciationAndAmortization,
          "Non Operating Income Net Other":
              yearlyData["2022-12-31"]!.nonOperatingIncomeNetOther,
          "Operating Income": yearlyData["2022-12-31"]!.operatingIncome,
          "Other Operating Expenses":
              yearlyData["2022-12-31"]!.otherOperatingExpenses,
          "Interest Expense": yearlyData["2022-12-31"]!.interestExpense,
          "Tax Provision": yearlyData["2022-12-31"]!.taxProvision,
          "Interest Income": yearlyData["2022-12-31"]!.interestIncome,
          "Net Interest Income": yearlyData["2022-12-31"]!.netInterestIncome,
          "Extraordinary Items": yearlyData["2022-12-31"]!.extraordinaryItems,
          "Non Recurring": yearlyData["2022-12-31"]!.nonRecurring,
          "Other Items": yearlyData["2022-12-31"]!.otherItems,
          "Income Tax Expense": yearlyData["2022-12-31"]!.incomeTaxExpense,
          "Total Revenue": yearlyData["2022-12-31"]!.totalRevenue,
          "Total Operating Expenses":
              yearlyData["2022-12-31"]!.totalOperatingExpenses,
          "Cost Of Revenue": yearlyData["2022-12-31"]!.costOfRevenue,
          "Total Other Income Expense Net":
              yearlyData["2022-12-31"]!.totalOtherIncomeExpenseNet,
          "Discontinued Operations":
              yearlyData["2022-12-31"]!.discontinuedOperations,
          "Net Income From Continuing Ops":
              yearlyData["2022-12-31"]!.netIncomeFromContinuingOps,
          "Net Income Applicable To Common Shares":
              yearlyData["2022-12-31"]!.netIncomeApplicableToCommonShares,
          "Preferred Stock And Other Adjustments":
              yearlyData["2022-12-31"]!.preferredStockAndOtherAdjustments,
        },
        "2021-12-31": {
          "Research Development": yearlyData["2021-12-31"]!.researchDevelopment,
          "Effect Of Accounting Charges":
              yearlyData["2021-12-31"]!.effectOfAccountingCharges,
          "Income Before Tax": yearlyData["2021-12-31"]!.incomeBeforeTax,
          "Minority Interest": yearlyData["2021-12-31"]!.minorityInterest,
          "Net Income": yearlyData["2021-12-31"]!.netIncome,
          "Selling General Administrative":
              yearlyData["2021-12-31"]!.sellingGeneralAdministrative,
          "Selling And Marketing Expenses":
              yearlyData["2021-12-31"]!.sellingAndMarketingExpenses,
          "Gross Profit": yearlyData["2021-12-31"]!.grossProfit,
          "Reconciled Depreciation":
              yearlyData["2021-12-31"]!.reconciledDepreciation,
          "Ebit": yearlyData["2021-12-31"]!.ebit,
          "Ebitda": yearlyData["2021-12-31"]!.ebitda,
          "Depreciation And Amortization":
              yearlyData["2021-12-31"]!.depreciationAndAmortization,
          "Non Operating Income Net Other":
              yearlyData["2021-12-31"]!.nonOperatingIncomeNetOther,
          "Operating Income": yearlyData["2021-12-31"]!.operatingIncome,
          "Other Operating Expenses":
              yearlyData["2021-12-31"]!.otherOperatingExpenses,
          "Interest Expense": yearlyData["2021-12-31"]!.interestExpense,
          "Tax Provision": yearlyData["2021-12-31"]!.taxProvision,
          "Interest Income": yearlyData["2021-12-31"]!.interestIncome,
          "Net Interest Income": yearlyData["2021-12-31"]!.netInterestIncome,
          "Extraordinary Items": yearlyData["2021-12-31"]!.extraordinaryItems,
          "Non Recurring": yearlyData["2021-12-31"]!.nonRecurring,
          "Other Items": yearlyData["2021-12-31"]!.otherItems,
          "Income Tax Expense": yearlyData["2021-12-31"]!.incomeTaxExpense,
          "Total Revenue": yearlyData["2021-12-31"]!.totalRevenue,
          "Total Operating Expenses":
              yearlyData["2021-12-31"]!.totalOperatingExpenses,
          "Cost Of Revenue": yearlyData["2021-12-31"]!.costOfRevenue,
          "Total Other Income Expense Net":
              yearlyData["2021-12-31"]!.totalOtherIncomeExpenseNet,
          "Discontinued Operations":
              yearlyData["2021-12-31"]!.discontinuedOperations,
          "Net Income From Continuing Ops":
              yearlyData["2021-12-31"]!.netIncomeFromContinuingOps,
          "Net Income Applicable To Common Shares":
              yearlyData["2021-12-31"]!.netIncomeApplicableToCommonShares,
          "Preferred Stock And Other Adjustments":
              yearlyData["2021-12-31"]!.preferredStockAndOtherAdjustments,
        },
        "2020-12-31": {
          "Research Development": yearlyData["2020-12-31"]!.researchDevelopment,
          "Effect Of Accounting Charges":
              yearlyData["2020-12-31"]!.effectOfAccountingCharges,
          "Income Before Tax": yearlyData["2020-12-31"]!.incomeBeforeTax,
          "Minority Interest": yearlyData["2020-12-31"]!.minorityInterest,
          "Net Income": yearlyData["2020-12-31"]!.netIncome,
          "Selling General Administrative":
              yearlyData["2020-12-31"]!.sellingGeneralAdministrative,
          "Selling And Marketing Expenses":
              yearlyData["2020-12-31"]!.sellingAndMarketingExpenses,
          "Gross Profit": yearlyData["2020-12-31"]!.grossProfit,
          "Reconciled Depreciation":
              yearlyData["2020-12-31"]!.reconciledDepreciation,
          "Ebit": yearlyData["2020-12-31"]!.ebit,
          "Ebitda": yearlyData["2020-12-31"]!.ebitda,
          "Depreciation And Amortization":
              yearlyData["2020-12-31"]!.depreciationAndAmortization,
          "Non Operating Income Net Other":
              yearlyData["2020-12-31"]!.nonOperatingIncomeNetOther,
          "Operating Income": yearlyData["2020-12-31"]!.operatingIncome,
          "Other Operating Expenses":
              yearlyData["2020-12-31"]!.otherOperatingExpenses,
          "Interest Expense": yearlyData["2020-12-31"]!.interestExpense,
          "Tax Provision": yearlyData["2020-12-31"]!.taxProvision,
          "Interest Income": yearlyData["2020-12-31"]!.interestIncome,
          "Net Interest Income": yearlyData["2020-12-31"]!.netInterestIncome,
          "Extraordinary Items": yearlyData["2020-12-31"]!.extraordinaryItems,
          "Non Recurring": yearlyData["2020-12-31"]!.nonRecurring,
          "Other Items": yearlyData["2020-12-31"]!.otherItems,
          "Income Tax Expense": yearlyData["2020-12-31"]!.incomeTaxExpense,
          "Total Revenue": yearlyData["2020-12-31"]!.totalRevenue,
          "Total Operating Expenses":
              yearlyData["2020-12-31"]!.totalOperatingExpenses,
          "Cost Of Revenue": yearlyData["2020-12-31"]!.costOfRevenue,
          "Total Other Income Expense Net":
              yearlyData["2020-12-31"]!.totalOtherIncomeExpenseNet,
          "Discontinued Operations":
              yearlyData["2020-12-31"]!.discontinuedOperations,
          "Net Income From Continuing Ops":
              yearlyData["2020-12-31"]!.netIncomeFromContinuingOps,
          "Net Income Applicable To Common Shares":
              yearlyData["2020-12-31"]!.netIncomeApplicableToCommonShares,
          "Preferred Stock And Other Adjustments":
              yearlyData["2020-12-31"]!.preferredStockAndOtherAdjustments,
        },
      };

      return data;
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
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
                'Dec 31, 2024',
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                'Dec 31, 2023',
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                'Dec 31, 2022',
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                'Dec 31, 2021',
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
            DataColumn(
              label: MdSnsText(
                'Dec 31, 2020',
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
              ? cashFLowList.map((item) {
                  return DataRow(
                    cells: [
                      DataCell(
                        Container(
                          width: 2,
                          height: 30,
                          color: AppColors.redFF3B3B,
                        ),
                      ),
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
                          children: [
                            MdSnsText(
                              "",
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
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
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataCell(
                        MdSnsText(
                          "",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      DataCell(
                        MdSnsText(
                          "",
                          textAlign: TextAlign.center,
                          color: AppColors.color00FF55,
                          variant: TextVariant.h5,
                          fontWeight: TextFontWeightVariant.h2,
                          overflow: TextOverflow.ellipsis,
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
              ? incomeStatement.map((item) {
                  return DataRow(
                    cells: [
                      DataCell(
                        Container(
                          width: 2,
                          height: 30,
                          color: AppColors.redFF3B3B,
                        ),
                      ),
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
                        MdSnsText(
                          formatNumbers(
                            extractIncomeData(data)["2024-12-31"]![item][0],
                          ),
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataCell(
                        MdSnsText(
                          formatNumbers(
                            extractIncomeData(data)["2023-12-31"]![item][0],
                          ),
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataCell(
                        MdSnsText(
                          formatNumbers(
                            extractIncomeData(data)["2022-12-31"]![item][0],
                          ),
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      DataCell(
                        MdSnsText(
                          formatNumbers(
                            extractIncomeData(data)["2021-12-31"]![item][0],
                          ),
                          textAlign: TextAlign.center,
                          color: AppColors.color00FF55,
                          variant: TextVariant.h5,
                          fontWeight: TextFontWeightVariant.h2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataCell(
                        MdSnsText(
                          formatNumbers(
                            extractIncomeData(data)["2020-12-31"]![item][0],
                          ),
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.color0098E4,
                          overflow: TextOverflow.ellipsis,
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
              : yearlyMap12024.entries.map((item) {
                  List<dynamic> dataList = jsonDecode(item.value.toString());
                  yearlyMap12024.entries.toList();
                  // Access first and second values
                  var firstItem = dataList[0];
                  var secondItem = dataList[1];
                  return DataRow(
                    cells: [
                      DataCell(
                        Container(
                          width: 2,
                          height: 30,
                          color: AppColors.redFF3B3B,
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MdSnsText(
                                item.key,
                                variant: TextVariant.h4,
                                fontWeight: TextFontWeightVariant.h4,
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
                        MdSnsText(
                          firstItem.toString(),
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataCell(
                        MdSnsText(
                          "",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataCell(
                        MdSnsText(
                          "",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      DataCell(
                        MdSnsText(
                          "",
                          textAlign: TextAlign.center,
                          color: AppColors.color00FF55,
                          variant: TextVariant.h5,
                          fontWeight: TextFontWeightVariant.h2,
                          overflow: TextOverflow.ellipsis,
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

String formatNumbers(num number) {
  String formatted = NumberFormat.decimalPattern().format(number);
  return formatted;
}
