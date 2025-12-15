import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/esg_score_model/esg_score_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/insider_transaction/insider_transaction_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/security_short/short_security_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
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
import '../../../../data/dto/overview_dto/overview_dto.dart';
import '../../../../domain/model/company_detail/company_detail_model.dart';
import '../../../../domain/model/compnay_model/company_model.dart';
import '../../../../domain/model/earnings_model/earnings_model.dart';
import '../../../../domain/model/security_ownership_model/security_ownership_model.dart';
import '../../../../domain/model/short_volume/short_volume_model.dart';
import '../../../provider/analytics_provider/analytics_provider.dart';

class CompanyContent extends ConsumerStatefulWidget {
  final ChatRouting? chatRouting;
  const CompanyContent({super.key, this.chatRouting});

  @override
  ConsumerState<CompanyContent> createState() => _CompanyContentState();
}

class _CompanyContentState extends ConsumerState<CompanyContent> {
  //raza: Wrong way to use provider/ Watch provider inside the build
  bool companyLoader = true;
  bool shortVolumeLoader = true;
  bool insiderTraderLoader = true;
  bool eSGScoresloader = true;
  bool earningLoader = true;
  bool securityOwnershipLoader = true;
  bool outstandingSharesLoader = true;
  bool securityShortVolumeLoader = true;
  bool companyDetailShimmer = true;
  CompanyData? companyModel;
  EarningsData? earningdata;
  ShortVolumeModel? shortVolumeModel;
  CompanyDetailModel? companyDetailModel;
  EsgScoreModel? esgScoreData;
  ShortSecurityResponse? securityShortVolume;
  InsiderTransactionResponse? insiderTransactionResponse;
  SecurityOwnershipResponse? securityOwnership;
  Future<void> secondIndexTap() async {
    if (companyModel == null) {
      try {
        getcompanyData(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in getcompanyData: $e\n$s");
      }
    }

    if (insiderTransactionResponse == null) {
      try {
        insiderTrades(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in insiderTrades: $e\n$s");
      }
    }

    if (shortVolumeModel == null) {
      try {
        getShortVolumeData(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        shortVolumeLoader = false;
        debugPrint("Error in getShortVolumeData: $e\n$s");
      }
    }

    if (securityOwnership == null) {
      try {
        getShortOwnership(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in getShortOwnership: $e\n$s");
      }
    }

    if (securityShortVolume == null) {
      try {
        getSecurityShortVolumeData(
          SymbolDto(symbol: widget.chatRouting!.symbol),
        );
      } catch (e, s) {
        debugPrint("Error in getSecurityShortVolumeData: $e\n$s");
      }
    }

    if (esgScoreData == null) {
      try {
        esgScore(widget.chatRouting!.symbol);
      } catch (e, s) {
        debugPrint("Error in esgScore: $e\n$s");
      }
    }

    if (earningdata == null) {
      try {
        getEarningData(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in getEarningData: $e\n$s");
      }
    }

    if (companyDetailModel == null) {
      try {
        getCompanyDetail(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in getCompanyDetail: $e\n$s");
      }
    }

    if (!mounted) return;
    setState(() {});
  }

  getCompanyDetail(SymbolDto symbol) {
    try {
      companyDetailShimmer = true;

      var res = ref.watch(companyDetailProvider(symbol));

      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              companyDetailShimmer = false;
              companyDetailModel = value;
            }
          }
        case AsyncError(:final error):
          companyDetailShimmer = false;
        case AsyncLoading():
          companyDetailShimmer = false;
      }
    } catch (e) {
      setState(() {
        companyDetailShimmer = false;
      });
      print(e);
    }
  }

  getEarningData(SymbolDto symbol) {
    try {
      earningLoader = true;
      var res = ref.watch(earningsDataProvider(symbol));

      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              earningLoader = false;
              earningdata = value.data;
            }
          }
        case AsyncError(:final error):
          earningLoader = false;
        case AsyncLoading():
          earningLoader = false;
      }
    } catch (e) {
      setState(() {
        earningLoader = false;
      });
    }
  }

  esgScore(String symbol) {
    try {
      eSGScoresloader = true;
      var res = ref.watch(esgScoreProvider(symbol));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              eSGScoresloader = false;
              esgScoreData = value;
            }
          }
        case AsyncError(:final error):
          eSGScoresloader = false;
        case AsyncLoading():
          eSGScoresloader = false;
      }
    } catch (e) {
      setState(() {
        eSGScoresloader = false;
      });
    }
  }

  insiderTrades(SymbolDto symbol) async {
    try {
      insiderTraderLoader = true;
      var res = ref.watch(insiderTradesProvider(symbol));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              insiderTraderLoader = false;
              insiderTransactionResponse = value;
            }
          }
        case AsyncError(:final error):
          insiderTraderLoader = false;
        case AsyncLoading():
          insiderTraderLoader = false;
      }
    } catch (e) {
      setState(() {
        insiderTraderLoader = false;
      });
    }
  }

  getSecurityShortVolumeData(SymbolDto symbol) {
    try {
      securityShortVolumeLoader = true;
      var res = ref.watch(securityShortVolumeProvider(symbol));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              securityShortVolumeLoader = false;
              securityShortVolume = value;
            }
          }
        case AsyncError(:final error):
          securityShortVolumeLoader = false;
        case AsyncLoading():
          securityShortVolumeLoader = false;
      }
    } catch (e) {
      setState(() {
        securityShortVolumeLoader = false;
      });
    }
  }

  getShortOwnership(SymbolDto symbol) async {
    try {
      securityOwnershipLoader = true;
      var res = ref.watch(shortOwnershipProvider(symbol));

      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              securityOwnershipLoader = false;
              securityOwnership = value;
            }
          }
        case AsyncError(:final error):
          securityOwnershipLoader = false;
        case AsyncLoading():
          securityOwnershipLoader = false;
      }
    } catch (e) {
      setState(() {
        securityOwnershipLoader = false;
      });
    }
  }

  getShortVolumeData(SymbolDto symbol) async {
    shortVolumeLoader = true;
    var res = ref.watch(ShortVolumeDataProvider(symbol));
    switch (res) {
      case AsyncData(:final value):
        {
          if (value != null) {
            shortVolumeLoader = false;

            shortVolumeModel = value;
          }
        }
      case AsyncError(:final error):
        shortVolumeLoader = false;
      case AsyncLoading():
        shortVolumeLoader = false;
    }
  }

  getcompanyData(SymbolDto symbol) async {
    try {
      companyLoader = true;
      var res = ref.watch(companyDataProvider(symbol));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              companyLoader = false;

              companyModel = value.data;
            }
          }
        case AsyncError(:final error):
          companyLoader = false;
        case AsyncLoading():
          companyLoader = false;
      }
    } catch (e) {
      setState(() {
        companyLoader = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    secondIndexTap();
    return SafeArea(
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

                companyLoader == false
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
                    : companyModel != null &&
                          companyModel!.general.Description != null
                    ? ReadMoreText(
                        companyModel!.general.Description!,

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
                companyLoader == false
                    ? InfoBoxGrid(items: ["", "", "", ""])
                    : companyModel != null &&
                          companyModel!.general.Address != null
                    ? InfoBoxGrid(
                        items: [
                          companyModel!.general.Address ?? "",
                          companyModel!.general.Country ?? "",
                          companyModel!.general.FullTimeEmployees.toString(),
                          "${companyModel!.general.WebURL ?? 0}",
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
                companyLoader == false
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
                          companyModel != null &&
                                  companyModel!.general.Officers != null &&
                                  companyModel!.general.Officers!.isNotEmpty
                              ? SizedBox(
                                  height: 180.h,
                                  width: MediaQuery.sizeOf(context).width / 1.1,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        companyModel!.general.Officers!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                          return ProfileCardWidget(
                                            imagePath:
                                                companyModel!
                                                    .general
                                                    .Officers![index]
                                                    .Image ??
                                                "",

                                            designation:
                                                companyModel!
                                                    .general
                                                    .Officers![index]
                                                    .Title ??
                                                "",
                                            name:
                                                companyModel!
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
                companyLoader == true
                    ? CompanyDetailsCard(
                        items: ["", "", "", "", "", "", "", "", ""],
                      )
                    : companyModel != null
                    ? CompanyDetailsCard(
                        items: [
                          Filters.systemNumberConvention(
                            companyModel!.general.SharesOutstanding ?? 0,
                            isPrice: false,
                            isAbs: false,
                          ),

                          Filters.systemNumberConvention(
                            companyModel!.general.PercentInstitutions ?? 0,
                            isPrice: false,
                            alwaysShowTwoDecimal: true,
                          ),

                          Filters.systemNumberConvention(
                            companyModel!.general.EBITDA,
                            isPrice: false,
                            isAbs: false,
                          ),
                          companyModel!.general.Exchange ?? "",
                          companyModel!.general.Symbol ?? "",
                          companyModel!.general.Sector ?? "",
                          companyModel!.general.Industry ?? "",
                          companyModel!.general.FiscalYearEnd ?? "",
                          Filters.systemNumberConvention(
                            companyModel!.general.MarketCapitalization ?? 0,
                            isPrice: false,
                            isAbs: false,
                          ),
                        ],
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),

                earningLoader == true
                    ? Earnings(items: ["", "", "", "", ""])
                    : earningdata != null
                    ? Earnings(
                        items: [
                          earningdata!.reportedEps != null
                              ? "\$" +
                                    earningdata!.reportedEps!.reportedEps
                                        .toString()
                              : "N/A",

                          earningdata!.reportedEps != null &&
                                  earningdata!
                                          .reportedEps!
                                          .lastEarningsAnnouncement !=
                                      null
                              ? earningdata!
                                    .reportedEps!
                                    .lastEarningsAnnouncement
                                    .toString()
                              : "N/A",

                          earningdata!.reportedEps != null
                              ? "\$" +
                                    compactFormatter.format(
                                      earningdata!
                                              .reportedEps!
                                              .consensusEpsForecast ??
                                          0,
                                    )
                              : "0",
                          earningdata!.reportedEps != null
                              ? earningdata!.reportedEps!.epsSurprise.toString()
                              : "N/A",

                          earningdata!.reportedEps != null
                              ? "\$" +
                                    compactFormatter.format(
                                      earningdata!
                                              .reportedRevenue!
                                              .totalRevenue ??
                                          0,
                                    )
                              : "0",
                        ],
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),
                shortVolumeLoader == true
                    ? shimmerBox(height: 300, radius: 16)
                    : shortVolumeModel != null &&
                          shortVolumeModel!.data!.Charts.length > 0
                    ? ShortVolumeChart(data: shortVolumeModel!.data!.Charts)
                    : SizedBox(),
                SizedBox(height: 14.h),

                outstandingSharesLoader == true
                    ? shimmerBox(height: 300, radius: 16)
                    : companyDetailModel != null &&
                          companyDetailModel!
                                  .data
                                  .fundamentalsOutstandingShares !=
                              null &&
                          companyDetailModel!
                              .data
                              .fundamentalsOutstandingShares!
                              .isNotEmpty
                    ? OutstandingSharesChart(
                        fundamentalsOutstandingShares: companyDetailModel!
                            .data
                            .fundamentalsOutstandingShares,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),

                outstandingSharesLoader == true
                    ? TableShimmer(title: "ESG Scores")
                    : esgScoreData != null && esgScoreData!.data != null
                    ? EsgScoreTable(data: esgScoreData!.data)
                    : SizedBox(),
                SizedBox(height: 14.h),

                eSGScoresloader == true
                    ? TableShimmer(title: "Split Dividend")
                    : companyDetailModel != null &&
                          companyDetailModel!
                                  .data
                                  .fundamentalsSplitsDividends !=
                              null
                    ? SplitDividend(
                        fundamentalsSplitsDividends: companyDetailModel!
                            .data
                            .fundamentalsSplitsDividends,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),

                securityShortVolumeLoader == true
                    ? TableShimmer(title: "Security Short Volume")
                    : securityShortVolume != null &&
                          securityShortVolume!.data != null
                    ? SecurityShortVolume(data: securityShortVolume!.data)
                    : SizedBox(),
                SizedBox(height: 14.h),

                insiderTraderLoader == true
                    ? TableShimmer(title: "Insider Trader")
                    : insiderTransactionResponse != null &&
                          insiderTransactionResponse!.data.isNotEmpty
                    ? InsiderTraderTable(data: insiderTransactionResponse!)
                    : SizedBox(),
                SizedBox(height: 14.h),
                securityOwnershipLoader == true
                    ? TableShimmer(title: "Security Ownership")
                    : securityOwnership != null &&
                          securityOwnership!.data != null &&
                          securityOwnership!.data!.isNotEmpty
                    ? SecurityOwnershipTable(data: securityOwnership!.data!)
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

// ============================================================================
// CompanyContentV1 - Properly refactored with correct Riverpod usage
// ============================================================================

class CompanyContentV1 extends ConsumerStatefulWidget {
  final ChatRouting? chatRouting;
  const CompanyContentV1({super.key, this.chatRouting});

  @override
  ConsumerState<CompanyContentV1> createState() => _CompanyContentV1State();
}

class _CompanyContentV1State extends ConsumerState<CompanyContentV1> {
  @override
  Widget build(BuildContext context) {
    // Watch all providers in build method
    final companyState = ref.watch(
      companyDataProvider(SymbolDto(symbol: widget.chatRouting?.symbol ?? '')),
    );
    final earningsState = ref.watch(
      earningsDataProvider(SymbolDto(symbol: widget.chatRouting?.symbol ?? '')),
    );
    final esgScoreState = ref.watch(
      esgScoreProvider(widget.chatRouting?.symbol ?? ''),
    );
    final insiderTradesState = ref.watch(
      insiderTradesProvider(
        SymbolDto(symbol: widget.chatRouting?.symbol ?? ''),
      ),
    );
    final securityShortVolumeState = ref.watch(
      securityShortVolumeProvider(
        SymbolDto(symbol: widget.chatRouting?.symbol ?? ''),
      ),
    );
    final shortOwnershipState = ref.watch(
      shortOwnershipProvider(
        SymbolDto(symbol: widget.chatRouting?.symbol ?? ''),
      ),
    );
    final shortVolumeState = ref.watch(
      shortVolumeDataProvider(
        SymbolDto(symbol: widget.chatRouting?.symbol ?? ''),
      ),
    );
    final companyDetailState = ref.watch(
      companyDetailProvider(
        SymbolDto(symbol: widget.chatRouting?.symbol ?? ''),
      ),
    );

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
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

                // Company Description
                switch (companyState) {
                  AsyncData(:final value)
                      when value != null &&
                          value.data.general.Description != null =>
                    ReadMoreText(
                      value.data.general.Description!,
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: '\nShow More',
                      trimExpandedText: '\nShow Less',
                      moreStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        height: 1.8,
                        fontWeight: FontWeight.w700,
                        color: AppColors.secondaryColor,
                      ),
                      lessStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        height: 1.8,
                        fontWeight: FontWeight.w700,
                        color: AppColors.secondaryColor,
                      ),
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                  AsyncLoading() => Column(
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
                  ),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),

                // Info Box Grid
                switch (companyState) {
                  AsyncData(:final value)
                      when value != null &&
                          value.data.general.Address != null =>
                    InfoBoxGrid(
                      items: [
                        value.data.general.Address ?? "",
                        value.data.general.Country ?? "",
                        value.data.general.FullTimeEmployees.toString(),
                        "${value.data.general.WebURL ?? 0}",
                      ],
                    ),
                  AsyncLoading() => InfoBoxGrid(items: ["", "", "", ""]),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },

                SizedBox(height: 10.h),
                MdSnsText(
                  "Key Executives",
                  color: AppColors.fieldTextColor,
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h1,
                ),
                SizedBox(height: 10.h),

                // Key Executives
                switch (companyState) {
                  AsyncData(:final value)
                      when value != null &&
                          value.data.general.Officers != null &&
                          value.data.general.Officers!.isNotEmpty =>
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 180.h,
                          width: MediaQuery.sizeOf(context).width / 1.1,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: value.data.general.Officers!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ProfileCardWidget(
                                imagePath:
                                    value.data.general.Officers![index].Image ??
                                    "",
                                designation:
                                    value.data.general.Officers![index].Title ??
                                    "",
                                name:
                                    value.data.general.Officers![index].Name ??
                                    "",
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                                  return SizedBox(width: 10);
                                },
                          ),
                        ),
                      ],
                    ),
                  AsyncLoading() => Row(
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
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 10);
                          },
                        ),
                      ),
                    ],
                  ),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },

                // Company Details Card
                switch (companyState) {
                  AsyncData(:final value) when value != null =>
                    CompanyDetailsCard(
                      items: [
                        Filters.systemNumberConvention(
                          value.data.general.SharesOutstanding ?? 0,
                          isPrice: false,
                          isAbs: false,
                        ),
                        Filters.systemNumberConvention(
                          value.data.general.PercentInstitutions ?? 0,
                          isPrice: false,
                          alwaysShowTwoDecimal: true,
                        ),
                        Filters.systemNumberConvention(
                          value.data.general.EBITDA,
                          isPrice: false,
                          isAbs: false,
                        ),
                        value.data.general.Exchange ?? "",
                        value.data.general.Symbol ?? "",
                        value.data.general.Sector ?? "",
                        value.data.general.Industry ?? "",
                        value.data.general.FiscalYearEnd ?? "",
                        Filters.systemNumberConvention(
                          value.data.general.MarketCapitalization ?? 0,
                          isPrice: false,
                          isAbs: false,
                        ),
                      ],
                    ),
                  AsyncLoading() => CompanyDetailsCard(
                    items: ["", "", "", "", "", "", "", "", ""],
                  ),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),

                // Earnings
                switch (earningsState) {
                  AsyncData(:final value)
                      when value != null && value.data != null =>
                    Earnings(
                      items: [
                        value.data!.reportedEps != null
                            ? "\$" +
                                  value.data!.reportedEps!.reportedEps
                                      .toString()
                            : "N/A",
                        value.data!.reportedEps != null &&
                                value
                                        .data!
                                        .reportedEps!
                                        .lastEarningsAnnouncement !=
                                    null
                            ? value.data!.reportedEps!.lastEarningsAnnouncement
                                  .toString()
                            : "N/A",
                        value.data!.reportedEps != null
                            ? "\$" +
                                  compactFormatter.format(
                                    value
                                            .data!
                                            .reportedEps!
                                            .consensusEpsForecast ??
                                        0,
                                  )
                            : "0",
                        value.data!.reportedEps != null
                            ? value.data!.reportedEps!.epsSurprise.toString()
                            : "N/A",
                        value.data!.reportedEps != null
                            ? "\$" +
                                  compactFormatter.format(
                                    value.data!.reportedRevenue!.totalRevenue ??
                                        0,
                                  )
                            : "0",
                      ],
                    ),
                  AsyncLoading() => Earnings(items: ["", "", "", "", ""]),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),

                // Short Volume Chart
                switch (shortVolumeState) {
                  AsyncData(:final value)
                      when value != null &&
                          value.data != null &&
                          value.data!.Charts.isNotEmpty =>
                    ShortVolumeChart(data: value.data!.Charts),
                  AsyncLoading() => shimmerBox(height: 300, radius: 16),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),

                // Outstanding Shares Chart
                switch (companyDetailState) {
                  AsyncData(:final value)
                      when value != null &&
                          value.data.fundamentalsOutstandingShares != null &&
                          value
                              .data
                              .fundamentalsOutstandingShares!
                              .isNotEmpty =>
                    OutstandingSharesChart(
                      fundamentalsOutstandingShares:
                          value.data.fundamentalsOutstandingShares,
                    ),
                  AsyncLoading() => shimmerBox(height: 300, radius: 16),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),

                // ESG Scores
                switch (esgScoreState) {
                  AsyncData(:final value)
                      when value != null && value.data != null =>
                    EsgScoreTable(data: value.data),
                  AsyncLoading() => TableShimmer(title: "ESG Scores"),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),

                // Split Dividend
                switch (companyDetailState) {
                  AsyncData(:final value)
                      when value != null &&
                          value.data.fundamentalsSplitsDividends != null =>
                    SplitDividend(
                      fundamentalsSplitsDividends:
                          value.data.fundamentalsSplitsDividends,
                    ),
                  AsyncLoading() => TableShimmer(title: "Split Dividend"),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),

                // Security Short Volume
                switch (securityShortVolumeState) {
                  AsyncData(:final value)
                      when value != null && value.data != null =>
                    SecurityShortVolume(data: value.data),
                  AsyncLoading() => TableShimmer(
                    title: "Security Short Volume",
                  ),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),

                // Insider Trader
                switch (insiderTradesState) {
                  AsyncData(:final value)
                      when value != null && value.data.isNotEmpty =>
                    InsiderTraderTable(data: value),
                  AsyncLoading() => TableShimmer(title: "Insider Trader"),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),

                // Security Ownership
                switch (shortOwnershipState) {
                  AsyncData(:final value)
                      when value != null &&
                          value.data != null &&
                          value.data!.isNotEmpty =>
                    SecurityOwnershipTable(data: value.data!),
                  AsyncLoading() => TableShimmer(title: "Security Ownership"),
                  AsyncError() => SizedBox(),
                  _ => SizedBox(),
                },
                SizedBox(height: 14.h),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
