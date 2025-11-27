import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/esg_score_model/esg_score_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/insider_transaction/insider_transaction_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/security_short/short_security_model.dart';
import 'package:trader_gpt/src/shared/widgets/table_shimmer.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../shared/chart/share_structure_widget.dart';
import '../../../../../../shared/extensions/number_formatter_extension.dart';
import '../../../../../../shared/widgets/InfoBox_widgets.dart';
import '../../../../../../shared/widgets/company_detail.widgets.dart';
import '../../../../../../shared/widgets/earning_wigdets.dart';
import '../../../../../../shared/widgets/esg_score_table.dart';
import '../../../../../../shared/widgets/insiderTrader_widgets.dart';
import '../../../../../../shared/widgets/outstanding_widgets.dart';
import '../../../../../../shared/widgets/profileCard_widgets.dart';
import '../../../../../../shared/widgets/profile_card_shimmer.dart';
import '../../../../../../shared/widgets/security_short_widgets.dart';
import '../../../../../../shared/widgets/securityownership_widgets.dart';
import '../../../../../../shared/widgets/shortvalue.widgets.dart';
import '../../../../../../shared/widgets/split_dividend.dart';
import '../../../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../../new_conversations/presentation/pages/widget/shimmer_widget.dart';
import '../../../../domain/model/company_detail/company_detail_model.dart';
import '../../../../domain/model/compnay_model/company_model.dart';
import '../../../../domain/model/earnings_model/earnings_model.dart';
import '../../../../domain/model/security_ownership_model/security_ownership_model.dart';
import '../../../../domain/model/short_volume/short_volume_model.dart';

class CompanyContent extends StatefulWidget {
  final dynamic id;
  final bool companyLoader;
  final bool shortVolumeLoader;
  final bool insiderTraderLoader;
  final bool eSGScoresloader;
  final bool earningLoader;
  final bool securityOwnershipLoader;
  final bool outstandingSharesLoader;
  final CompanyData? companyModel;
  final EarningsData? earningdata;
  final ShortVolumeModel? shortVolumeModel;
  final CompanyDetailModel? companyDetailModel;
  final EsgScoreModel? esgScoreData;
  final ShortSecurityResponse? securityShortVolume;
  final InsiderTransactionResponse? insiderTransactionResponse;
  final SecurityOwnershipResponse? securityOwnership;

  const CompanyContent({
    super.key,
    required this.id,
    required this.outstandingSharesLoader,
    required this.companyLoader,
    required this.shortVolumeLoader,
    required this.insiderTraderLoader,
    required this.securityOwnershipLoader,
    required this.eSGScoresloader,
    required this.earningLoader,
    this.companyModel,
    this.earningdata,
    this.shortVolumeModel,
    this.companyDetailModel,
    this.esgScoreData,
    this.securityShortVolume,
    this.insiderTransactionResponse,
    this.securityOwnership,
  });

  @override
  State<CompanyContent> createState() => _CompanyContentState();
}

class _CompanyContentState extends State<CompanyContent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: widget.id,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            // SizedBox(height: 14.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MdSnsText(
                  "Company Details",
                  color: AppColors.fieldTextColor,
                  variant: TextVariant.h3,
                  fontWeight: TextFontWeightVariant.h1,
                ),
                SizedBox(height: 4.h),

                widget.companyLoader == false
                    ? Column(
                        children: [
                          shimmerBox(
                            height: 10,
                            width: MediaQuery.sizeOf(context).width / 1.1,
                          ),
                          SizedBox(height: 6.h),
                          shimmerBox(
                            height: 10,
                            width: MediaQuery.sizeOf(context).width / 1.1,
                          ),
                        ],
                      )
                    : widget.companyModel != null &&
                          widget.companyModel!.general.Description != null
                    ? ReadMoreText(
                        widget.companyModel!.general.Description!,

                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '\nShow More',
                        trimExpandedText: '\nShow Less',

                        moreStyle: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          // wordSpacing: 0,
                          // letterSpacing: 0,
                          height: 1.8,
                          fontWeight: FontWeight.w700,
                          color: AppColors.secondaryColor,
                        ),
                        lessStyle: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          // wordSpacing: 0,
                          // letterSpacing: 0,
                          height: 1.8,
                          fontWeight: FontWeight.w700,
                          color: AppColors.secondaryColor,
                        ),
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                        ),
                      )
                    : SizedBox(),

                // SizedBox(height: 14.h),
                // companyModel != null &&
                //         companyModel!.general.Description != null
                //     ? ReadMoreText(
                //         companyModel!.general.Description!,
                //         trimLines: 2,
                //         trimMode: TrimMode.Line,
                //         trimCollapsedText: 'Read More',
                //         trimExpandedText: 'Read Less',
                //         style: TextStyle(
                //           fontSize: 14.sp,
                //           fontWeight: FontWeight.w400,
                //           color: AppColors.white,
                //         ),
                //       )
                //     : SizedBox(),
                SizedBox(height: 14.h),
                widget.companyLoader == false
                    ? InfoBoxGrid(items: ["", "", "", ""])
                    : widget.companyModel != null &&
                          widget.companyModel!.general.Address != null
                    ? InfoBoxGrid(
                        items: [
                          widget.companyModel!.general.Address ?? "",
                          widget.companyModel!.general.Country ?? "",
                          widget.companyModel!.general.FullTimeEmployees
                              .toString(),
                          "${widget.companyModel!.general.WebURL ?? 0}",
                        ],
                      )
                    : SizedBox(),

                SizedBox(height: 10.h),
                MdSnsText(
                  "Key Executives",
                  color: AppColors.fieldTextColor,
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h1,
                ),

                SizedBox(height: 10.h),
                widget.companyLoader == false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 180.h,
                            width: MediaQuery.sizeOf(context).width / 1.1,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return ProfileCardShimmer();
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                    return SizedBox(width: 10);
                                  },
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          widget.companyModel != null &&
                                  widget.companyModel!.general.Officers !=
                                      null &&
                                  widget
                                      .companyModel!
                                      .general
                                      .Officers!
                                      .isNotEmpty
                              ? SizedBox(
                                  height: 180.h,
                                  width: MediaQuery.sizeOf(context).width / 1.1,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: widget
                                        .companyModel!
                                        .general
                                        .Officers!
                                        .length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                          return ProfileCardWidget(
                                            imagePath:
                                                widget
                                                    .companyModel!
                                                    .general
                                                    .Officers![index]
                                                    .Image ??
                                                "",

                                            designation:
                                                widget
                                                    .companyModel!
                                                    .general
                                                    .Officers![index]
                                                    .Title ??
                                                "",
                                            name:
                                                widget
                                                    .companyModel!
                                                    .general
                                                    .Officers![index]
                                                    .Name ??
                                                "",
                                          );
                                        },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                          return SizedBox(width: 10);
                                        },
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),

                // SizedBox(height: 14.h),
                widget.companyLoader == true
                    ? CompanyDetailsCard(
                        items: ["", "", "", "", "", "", "", "", ""],
                      )
                    : widget.companyModel != null
                    ? CompanyDetailsCard(
                        items: [
                          Filters.systemNumberConvention(
                            widget.companyModel!.general.SharesOutstanding ?? 0,
                            isPrice: false,
                            isAbs: false,
                          ),

                          Filters.systemNumberConvention(
                            widget.companyModel!.general.PercentInstitutions ??
                                0,
                            isPrice: false,
                            alwaysShowTwoDecimal: true,
                          ),

                          Filters.systemNumberConvention(
                            widget.companyModel!.general.EBITDA,
                            isPrice: false,
                            isAbs: false,
                          ),
                          widget.companyModel!.general.Exchange ?? "",
                          widget.companyModel!.general.Symbol ?? "",
                          widget.companyModel!.general.Sector ?? "",
                          widget.companyModel!.general.Industry ?? "",
                          widget.companyModel!.general.FiscalYearEnd ?? "",
                          Filters.systemNumberConvention(
                            widget.companyModel!.general.MarketCapitalization ??
                                0,
                            isPrice: false,
                            isAbs: false,
                          ),
                        ],
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),

                widget.earningLoader == true
                    ? Earnings(items: ["", "", "", "", ""])
                    : widget.earningdata != null
                    ? Earnings(
                        items: [
                          widget.earningdata!.reportedEps != null
                              ? "\$" +
                                    widget.earningdata!.reportedEps!.reportedEps
                                        .toString()
                              : "N/A",

                          widget.earningdata!.reportedEps != null &&
                                  widget
                                          .earningdata!
                                          .reportedEps!
                                          .lastEarningsAnnouncement !=
                                      null
                              ? widget
                                    .earningdata!
                                    .reportedEps!
                                    .lastEarningsAnnouncement
                                    .toString()
                              : "N/A",

                          widget.earningdata!.reportedEps != null
                              ? "\$" +
                                    compactFormatter.format(
                                      widget
                                              .earningdata!
                                              .reportedEps!
                                              .consensusEpsForecast ??
                                          0,
                                    )
                              : "0",
                          widget.earningdata!.reportedEps != null
                              ? widget.earningdata!.reportedEps!.epsSurprise
                                    .toString()
                              : "N/A",

                          widget.earningdata!.reportedEps != null
                              ? "\$" +
                                    compactFormatter.format(
                                      widget
                                              .earningdata!
                                              .reportedRevenue!
                                              .totalRevenue ??
                                          0,
                                    )
                              : "0",
                        ],
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),
                widget.shortVolumeLoader == true
                    ? shimmerBox(height: 300, radius: 16)
                    : widget.shortVolumeModel != null &&
                          widget.shortVolumeModel!.data!.Charts.length > 0
                    ? ShortVolumeChart(
                        data: widget.shortVolumeModel!.data!.Charts,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),

                widget.outstandingSharesLoader == true
                    ? shimmerBox(height: 300, radius: 16)
                    : widget.companyDetailModel != null &&
                          widget
                                  .companyDetailModel!
                                  .data
                                  .fundamentalsOutstandingShares !=
                              null &&
                          widget
                              .companyDetailModel!
                              .data
                              .fundamentalsOutstandingShares!
                              .isNotEmpty
                    ? OutstandingSharesChart(
                        fundamentalsOutstandingShares: widget
                            .companyDetailModel!
                            .data
                            .fundamentalsOutstandingShares,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),

                widget.outstandingSharesLoader == true
                    ? TableShimmer(title: "ESG Scores")
                    : widget.esgScoreData != null &&
                          widget.esgScoreData!.data != null
                    ? EsgScoreTable(data: widget.esgScoreData!.data)
                    : SizedBox(),
                SizedBox(height: 14.h),

                widget.eSGScoresloader == true
                    ? TableShimmer(title: "Split Dividend")
                    : widget.companyDetailModel != null &&
                          widget
                                  .companyDetailModel!
                                  .data
                                  .fundamentalsSplitsDividends !=
                              null
                    ? SplitDividend(
                        fundamentalsSplitsDividends: widget
                            .companyDetailModel!
                            .data
                            .fundamentalsSplitsDividends,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),

                widget.outstandingSharesLoader == true
                    ? TableShimmer(title: "Security Short Volume")
                    : widget.securityShortVolume != null &&
                          widget.securityShortVolume!.data != null
                    ? SecurityShortVolume(
                        data: widget.securityShortVolume!.data,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),

                widget.insiderTraderLoader == true
                    ? TableShimmer(title: "Insider Trader")
                    : widget.insiderTransactionResponse != null &&
                          widget.insiderTransactionResponse!.data.isNotEmpty
                    ? InsiderTraderTable(
                        data: widget.insiderTransactionResponse!,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),
                widget.securityOwnershipLoader == true
                    ? TableShimmer(title: "Security Ownership")
                    : widget.securityOwnership != null &&
                          widget.securityOwnership!.data != null &&
                          widget.securityOwnership!.data!.isNotEmpty
                    ? SecurityOwnershipTable(
                        data: widget.securityOwnership!.data!,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),
              ],
            ),

            SizedBox(height: 20.h),

            // WeeklySeasonalityChart(),
            // SizedBox(height: 20.h),
            // ShareStructureCard(),
          ],
        ),
      ),
    );
  }
}
