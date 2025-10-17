import 'dart:convert';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/financial_data_model/financial_data_model.dart';

class FinancialTable extends StatelessWidget {
  final Map<String, YearlyFinancialData> data;
  final FinancialChart chart;
  final FinancialTableEnum? itemName;

  const FinancialTable({
    super.key,
    required this.data,
    required this.itemName,
    required this.chart,
  });

  @override
  Widget build(BuildContext context) {
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

    var fa = chart.investments != null
        ? chart.investments!.map((e) => (e.y as num).toDouble()).toList()
        : [0, 0, 0, 0, 0];

    //income Statement data
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
          "Extraordinary Items": chart.reconciledDepreciation != null
              ? chart.reconciledDepreciation!
                    .map((e) => (e.y as num).toDouble())
                    .toList()
              : [0, 0, 0, 0, 0],
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

    Map<String, List<num>> extractIncomeChart(FinancialChart chart) {
      return {
        "Research Development": chart.researchDevelopment != null
            ? chart.researchDevelopment!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Effect Of Accounting Charges": chart.effectOfAccountingCharges != null
            ? chart.effectOfAccountingCharges!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Income Before Tax": chart.incomeBeforeTax != null
            ? chart.incomeBeforeTax!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Minority Interest": chart.minorityInterest != null
            ? chart.minorityInterest!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Income": chart.netIncome != null
            ? chart.netIncome!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Selling General Administrative":
            chart.sellingGeneralAdministrative != null
            ? chart.sellingGeneralAdministrative!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Selling And Marketing Expenses":
            chart.sellingAndMarketingExpenses != null
            ? chart.sellingAndMarketingExpenses!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Gross Profit": chart.grossProfit != null
            ? chart.grossProfit!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Reconciled Depreciation": chart.reconciledDepreciation != null
            ? chart.reconciledDepreciation!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Ebit": chart.ebit != null
            ? chart.ebit!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Ebitda": chart.ebitda != null
            ? chart.ebitda!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Depreciation And Amortization":
            chart.depreciationAndAmortization != null
            ? chart.depreciationAndAmortization!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Non Operating Income Net Other":
            chart.nonOperatingIncomeNetOther != null
            ? chart.nonOperatingIncomeNetOther!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Operating Income": chart.operatingIncome != null
            ? chart.operatingIncome!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Other Operating Expenses": chart.otherOperatingExpenses != null
            ? chart.otherOperatingExpenses!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Interest Expense": chart.interestExpense != null
            ? chart.interestExpense!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Tax Provision": chart.taxProvision != null
            ? chart.taxProvision!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Interest Income": chart.interestIncome != null
            ? chart.interestIncome!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Net Interest Income": chart.netInterestIncome != null
            ? chart.netInterestIncome!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Extraordinary Items": chart.extraordinaryItems != null
            ? chart.extraordinaryItems!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Non Recurring": chart.nonRecurring != null
            ? chart.nonRecurring!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Other Items": chart.otherItems != null
            ? chart.otherItems!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Income Tax Expense": chart.incomeTaxExpense != null
            ? chart.incomeTaxExpense!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Total Revenue": chart.totalRevenue != null
            ? chart.totalRevenue!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Total Operating Expenses": chart.totalOperatingExpenses != null
            ? chart.totalOperatingExpenses!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Cost Of Revenue": chart.costOfRevenue != null
            ? chart.costOfRevenue!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Total Other Income Expense Net":
            chart.totalOtherIncomeExpenseNet != null
            ? chart.totalOtherIncomeExpenseNet!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Discontinued Operations": chart.discontinuedOperations != null
            ? chart.discontinuedOperations!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Income From Continuing Ops":
            chart.netIncomeFromContinuingOps != null
            ? chart.netIncomeFromContinuingOps!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Income Applicable To Common Shares":
            chart.netIncomeApplicableToCommonShares != null
            ? chart.netIncomeApplicableToCommonShares!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Preferred Stock And Other Adjustments":
            chart.preferredStockAndOtherAdjustments != null
            ? chart.preferredStockAndOtherAdjustments!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
      };
    }

    //balanceSheet data
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

    Map<String, List<num>> extractBalanceSheetChart(FinancialChart chart) {
      return {
        "Total Assets": chart.totalAssets != null
            ? chart.totalAssets!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Intangible Assets": chart.intangibleAssets != null
            ? chart.intangibleAssets!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Earning Assets": chart.earningAssets != null
            ? chart.earningAssets!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Other Current Assets": chart.otherCurrentAssets != null
            ? chart.otherCurrentAssets!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Total Liab": chart.totalLiab != null
            ? chart.totalLiab!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Total Stockholder Equity": chart.totalStockholderEquity != null
            ? chart.totalStockholderEquity!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Deferred Long Term Liab": chart.deferredLongTermLiab != null
            ? chart.deferredLongTermLiab!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Other Current Liab": chart.otherCurrentLiab != null
            ? chart.otherCurrentLiab!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Common Stock": chart.commonStock != null
            ? chart.commonStock!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Capital Stock": chart.capitalStock != null
            ? chart.capitalStock!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Retained Earnings": chart.retainedEarnings != null
            ? chart.retainedEarnings!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Other Liab": chart.otherLiab != null
            ? chart.otherLiab!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Good Will": chart.goodWill != null
            ? chart.goodWill!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Other Assets": chart.otherAssets != null
            ? chart.otherAssets!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Cash": chart.cash != null
            ? chart.cash!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Cash And Equivalents": chart.cashAndEquivalents != null
            ? chart.cashAndEquivalents!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Total Current Liabilities": chart.totalCurrentLiabilities != null
            ? chart.totalCurrentLiabilities!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Current Deferred Revenue": chart.currentDeferredRevenue != null
            ? chart.currentDeferredRevenue!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Debt": chart.netDebt != null
            ? chart.netDebt!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Short Term Debt": chart.shortTermDebt != null
            ? chart.shortTermDebt!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Property Plant Equipment": chart.propertyPlantEquipment != null
            ? chart.propertyPlantEquipment!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Total Current Assets": chart.totalCurrentAssets != null
            ? chart.totalCurrentAssets!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Long Term Investments": chart.longTermInvestments != null
            ? chart.longTermInvestments!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Tangible Assets": chart.netTangibleAssets != null
            ? chart.netTangibleAssets!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Short Term Investments": chart.shortTermInvestments != null
            ? chart.shortTermInvestments!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Receivables": chart.netReceivables != null
            ? chart.netReceivables!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Long Term Debt": chart.longTermDebt != null
            ? chart.longTermDebt!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Inventory": chart.inventory != null
            ? chart.inventory!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Accounts Payable": chart.accountsPayable != null
            ? chart.accountsPayable!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Total Permanent Equity": chart.totalPermanentEquity != null
            ? chart.totalPermanentEquity!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],

        "Noncontrolling Interest In Consolidated Entity":
            chart.noncontrollingInterestInConsolidatedEntity != null
            ? chart.noncontrollingInterestInConsolidatedEntity!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Temporary Equity Redeemable Noncontrolling Interests":
            chart.temporaryEquityRedeemableNoncontrollingInterests != null
            ? chart.temporaryEquityRedeemableNoncontrollingInterests!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Accumulated Other Comprehensive Income":
            chart.accumulatedOtherComprehensiveIncome != null
            ? chart.accumulatedOtherComprehensiveIncome!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Additional Paid In Capital": chart.additionalPaidInCapital != null
            ? chart.additionalPaidInCapital!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Common Stock Total Equity": chart.commonStockTotalEquity != null
            ? chart.commonStockTotalEquity!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Preferred Stock Total Equity": chart.preferredStockTotalEquity != null
            ? chart.preferredStockTotalEquity!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Retained Earnings Total Equity":
            chart.retainedEarningsTotalEquity != null
            ? chart.retainedEarningsTotalEquity!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Treasury Stock": chart.treasuryStock != null
            ? chart.treasuryStock!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Accumulated Amortization": chart.accumulatedAmortization != null
            ? chart.accumulatedAmortization!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Non Current Assets Other": chart.nonCurrrentAssetsOther != null
            ? chart.nonCurrrentAssetsOther!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Deferred Long Term Asset Charges":
            chart.deferredLongTermAssetCharges != null
            ? chart.deferredLongTermAssetCharges!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Non Current Assets Total": chart.nonCurrentAssetsTotal != null
            ? chart.nonCurrentAssetsTotal!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Capital Lease Obligations": chart.capitalLeaseObligations != null
            ? chart.capitalLeaseObligations!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Long Term Debt Total": chart.longTermDebtTotal != null
            ? chart.longTermDebtTotal!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Non Current Liabilities Other":
            chart.nonCurrentLiabilitiesOther != null
            ? chart.nonCurrentLiabilitiesOther!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Non Current Liabilities Total":
            chart.nonCurrentLiabilitiesTotal != null
            ? chart.nonCurrentLiabilitiesTotal!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Negative Goodwill": chart.negativeGoodwill != null
            ? chart.negativeGoodwill!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Warrants": chart.warrants != null
            ? chart.warrants!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Preferred Stock Redeemable": chart.preferredStockRedeemable != null
            ? chart.preferredStockRedeemable!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Capital Surplus": chart.capitalSurpluse != null
            ? chart.capitalSurpluse!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Liabilities And Stockholders Equity":
            chart.liabilitiesAndStockholdersEquity != null
            ? chart.liabilitiesAndStockholdersEquity!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Cash And Short Term Investments":
            chart.cashAndShortTermInvestments != null
            ? chart.cashAndShortTermInvestments!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Property Plant And Equipment Gross":
            chart.propertyPlantAndEquipmentGross != null
            ? chart.propertyPlantAndEquipmentGross!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Property Plant And Equipment Net":
            chart.propertyPlantAndEquipmentNet != null
            ? chart.propertyPlantAndEquipmentNet!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Accumulated Depreciation": chart.accumulatedDepreciation != null
            ? chart.accumulatedDepreciation!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Working Capital": chart.netWorkingCapital != null
            ? chart.netWorkingCapital!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Invested Capital": chart.netInvestedCapital != null
            ? chart.netInvestedCapital!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Common Stock Shares Outstanding":
            chart.commonStockSharesOutstanding != null
            ? chart.commonStockSharesOutstanding!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
      };
    }

    //cashflow Data
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

    Map<String, List<num>> extractCashFlowChart(FinancialChart chart) {
      return {
        "Investments": chart.investments != null
            ? chart.investments!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],

        "Change To Liabilities": chart.changeToLiabilities != null
            ? chart.changeToLiabilities!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Total Cashflows From Investing Activities":
            chart.totalCashflowsFromInvestingActivities != null
            ? chart.totalCashflowsFromInvestingActivities!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Borrowings": chart.netBorrowings != null
            ? chart.netBorrowings!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Total Cash From Financing Activities":
            chart.totalCashFromFinancingActivities != null
            ? chart.totalCashFromFinancingActivities!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Change To Operating Activities":
            chart.changeToOperatingActivities != null
            ? chart.changeToOperatingActivities!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Net Income": chart.netIncome != null
            ? chart.netIncome!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Change In Cash": chart.changeInCash != null
            ? chart.changeInCash!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Begin Period Cash Flow": chart.beginPeriodCashFlow != null
            ? chart.beginPeriodCashFlow!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "End Period Cash Flow": chart.endPeriodCashFlow != null
            ? chart.endPeriodCashFlow!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Total Cash From Operating Activities":
            chart.totalCashFromOperatingActivities != null
            ? chart.totalCashFromOperatingActivities!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Issuance Of Capital Stock": chart.issuanceOfCapitalStock != null
            ? chart.issuanceOfCapitalStock!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Depreciation": chart.depreciation != null
            ? chart.depreciation!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Other Cashflows From Investing Activities":
            chart.otherCashflowsFromInvestingActivities != null
            ? chart.otherCashflowsFromInvestingActivities!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Dividends Paid": chart.dividendsPaid != null
            ? chart.dividendsPaid!.map((e) => (e.y as num).toDouble()).toList()
            : [0, 0, 0, 0, 0],
        "Change To Inventory": chart.changeToInventory != null
            ? chart.changeToInventory!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Change To Account Receivables":
            chart.changeToAccountReceivables != null
            ? chart.changeToAccountReceivables!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Sale Purchase Of Stock": chart.salePurchaseOfStock != null
            ? chart.salePurchaseOfStock!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Other Cashflows From Financing Activities":
            chart.otherCashflowsFromFinancingActivities != null
            ? chart.otherCashflowsFromFinancingActivities!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Change To Netincome": chart.changeToNetincome != null
            ? chart.changeToNetincome!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Capital Expenditures": chart.capitalExpenditures != null
            ? chart.capitalExpenditures!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Change Receivables": chart.changeReceivables != null
            ? chart.changeReceivables!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Cash Flows Other Operating": chart.cashFlowsOtherOperating != null
            ? chart.cashFlowsOtherOperating!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Exchange Rate Changes": chart.exchangeRateChanges != null
            ? chart.exchangeRateChanges!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Cash And Cash Equivalents Changes":
            chart.cashAndCashEquivalentsChanges != null
            ? chart.cashAndCashEquivalentsChanges!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Change In Working Capital": chart.changeInWorkingCapital != null
            ? chart.changeInWorkingCapital!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Stock Based Compensation": chart.stockBasedCompensation != null
            ? chart.stockBasedCompensation!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Other Non Cash Items": chart.otherNonCashItems != null
            ? chart.otherNonCashItems!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
        "Free Cash Flow": chart.freeCashFlow != null
            ? chart.changeInWorkingCapital!
                  .map((e) => (e.y as num).toDouble())
                  .toList()
            : [0, 0, 0, 0, 0],
      };
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 70.w,
                            height: 15.h,
                            child: Sparkline(
                              data:
                                  extractCashFlowChart(chart)[item]
                                      as List<double>,

                              lineWidth: 2.0,
                              lineColor:
                                  extractCashFlowChart(chart)[item]!.last <
                                      extractCashFlowChart(chart)[item]!.first
                                  ? AppColors.redFF3B3B
                                  : AppColors.color06D54E,
                              pointsMode: PointsMode.none,
                              pointColor: Colors.white,
                              useCubicSmoothing: false,
                              sharpCorners: true,
                              fillMode: FillMode.below,
                              fillGradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  extractCashFlowChart(chart)[item]!.last <
                                          extractCashFlowChart(
                                            chart,
                                          )[item]!.first
                                      ? AppColors.color0xFFCD3438.withOpacity(
                                          0.4,
                                        )
                                      : AppColors.color06D54E.withOpacity(0.4),
                                  extractCashFlowChart(chart)[item]!.last <
                                          extractCashFlowChart(
                                            chart,
                                          )[item]!.first
                                      ? AppColors.redFF3B3B.withOpacity(0.3)
                                      : AppColors.color06D54E.withOpacity(0.3),
                                ],
                              ),
                            ),
                          ),
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 70.w,
                            height: 15.h,
                            child: Sparkline(
                              data:
                                  extractIncomeChart(chart)['$item']
                                      as List<double>,
                              lineWidth: 2.0,
                              lineColor:
                                  extractIncomeChart(chart)[item]!.last <
                                      extractIncomeChart(chart)[item]!.first
                                  ? AppColors.redFF3B3B
                                  : AppColors.color06D54E,
                              pointsMode: PointsMode.none,
                              pointColor: Colors.white,
                              useCubicSmoothing: false,
                              sharpCorners: true,
                              fillMode: FillMode.below,
                              fillGradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  extractIncomeChart(chart)[item]!.last <
                                          extractIncomeChart(chart)[item]!.first
                                      ? AppColors.color0xFFCD3438.withOpacity(
                                          0.4,
                                        )
                                      : AppColors.color06D54E.withOpacity(0.4),
                                  extractIncomeChart(chart)[item]!.last <
                                          extractIncomeChart(chart)[item]!.first
                                      ? AppColors.redFF3B3B.withOpacity(0.3)
                                      : AppColors.color06D54E.withOpacity(0.3),
                                ],
                              ),
                            ),
                          ),
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 70.w,
                            height: 15.h,
                            child: Sparkline(
                              data:
                                  extractBalanceSheetChart(chart)['$item']
                                      as List<double>,
                              lineWidth: 2.0,
                              lineColor:
                                  extractBalanceSheetChart(chart)[item]!.last <
                                      extractBalanceSheetChart(
                                        chart,
                                      )[item]!.first
                                  ? AppColors.redFF3B3B
                                  : AppColors.color06D54E,
                              pointsMode: PointsMode.none,
                              pointColor: Colors.white,
                              useCubicSmoothing: false,
                              sharpCorners: true,
                              fillMode: FillMode.below,
                              fillGradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  extractBalanceSheetChart(chart)[item]!.last <
                                          extractBalanceSheetChart(
                                            chart,
                                          )[item]!.first
                                      ? AppColors.color0xFFCD3438.withOpacity(
                                          0.4,
                                        )
                                      : AppColors.color06D54E.withOpacity(0.4),
                                  extractBalanceSheetChart(chart)[item]!.last <
                                          extractBalanceSheetChart(
                                            chart,
                                          )[item]!.first
                                      ? AppColors.redFF3B3B.withOpacity(0.3)
                                      : AppColors.color06D54E.withOpacity(0.3),
                                ],
                              ),
                            ),
                          ),
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
