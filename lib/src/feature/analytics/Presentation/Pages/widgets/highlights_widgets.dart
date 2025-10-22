import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../domain/model/highlight_model_crypto/highlight_model_crypto.dart';
import '../../../domain/model/info_model_crypto/info_model_crypto.dart';

class HighlightsCard extends StatelessWidget {
  final InfoCryptoResponse highlightResponse;
  const HighlightsCard({Key? key, required this.highlightResponse})
    : super(key: key);

  static const double _cardRadius = 14.0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.color0x0x1AB3B3B3),
          color: AppColors.color091224,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 👇 Padded section (Header + Rating Bar)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildHeader()],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              color: AppColors.fieldColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MdSnsText(
                    'Ratings',
                    variant: TextVariant.h3,
                    color: AppColors.white,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                  MdSnsText(
                    'N/A',
                    variant: TextVariant.h3,
                    color: AppColors.white,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ],
              ),
            ),

            // 👇 Rest of layout (with padding again)
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ), // optional side padding
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),

                        // Bullish / Bearish Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // 👈 keep compact width for center alignment
                          children: [
                            MdSnsText(
                              'Bullish',
                              variant: TextVariant.h3,
                              color: const Color(0xFF3EE16C),
                              fontWeight: TextFontWeightVariant.h4,
                            ),
                            const SizedBox(
                              width: 60,
                            ), // 👈 spacing between Bullish & Bearish
                            MdSnsText(
                              'Bearish',
                              variant: TextVariant.h3,
                              color: AppColors.redFF3B3B,
                              fontWeight: TextFontWeightVariant.h4,
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        // Gradient bar with thumb
                        _RatingBar(
                          width: width * 1,
                        ), // 👈 narrower bar, centered

                        const SizedBox(height: 14),

                        // Range Card
                        _RangeCard(highlightResponse: highlightResponse),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),

            _DetailsList(highlightResponse: highlightResponse),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MdSnsText(
          'Highlights',

          color: AppColors.fieldTextColor,
          variant: TextVariant.h3,
          fontWeight: TextFontWeightVariant.h3,
        ),
        SizedBox(height: 2),
        MdSnsText(
          'Description about Highlights',
          variant: TextVariant.h4,
          color: AppColors.fieldTextColor,
          fontWeight: TextFontWeightVariant.h4,
        ),
      ],
    );
  }
}

class _RatingBar extends StatelessWidget {
  final double width;
  const _RatingBar({required this.width});

  @override
  Widget build(BuildContext context) {
    final thumbPos = 0.45;
    return SizedBox(
      width: width.clamp(220, 420),
      height: 18,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF2BC24C),
                  Color(0xFFF2C94C),
                  Color(0xFFEA4335),
                ],
              ),
            ),
          ),
          Positioned(
            left: (width.clamp(220, 420) - 24) * thumbPos,
            child: Container(
              width: 18,
              height: 18,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_upward,
                  size: 16,
                  color: Color(0xFF24425A),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RangeCard extends StatelessWidget {
  final InfoCryptoResponse highlightResponse;
  const _RangeCard({Key? key, required this.highlightResponse})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF13203A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          MdSnsText('24h Range', color: AppColors.white),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Low', style: TextStyle(color: Color(0xFF93B0D6))),
                  SizedBox(height: 6),
                  MdSnsText(
                    highlightResponse.data != null &&
                            highlightResponse.data!.marketData != null &&
                            highlightResponse.data!.marketData!.low24h !=
                                null &&
                            highlightResponse.data!.marketData!.low24h!.usd !=
                                null
                        ? highlightResponse.data!.marketData!.low24h!.usd!
                              .toStringAsFixed(2)
                        : "N/A",
                    variant: TextVariant.h4,
                    color: AppColors.white,
                    fontWeight: TextFontWeightVariant.h2,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('High', style: TextStyle(color: Color(0xFF93B0D6))),
                  const SizedBox(height: 6),
                  MdSnsText(
                    highlightResponse.data != null &&
                            highlightResponse.data!.marketData != null &&
                            highlightResponse.data!.marketData!.high24h !=
                                null &&
                            highlightResponse.data!.marketData!.high24h!.usd !=
                                null
                        ? highlightResponse.data!.marketData!.high24h!.usd!
                              .toStringAsFixed(2)
                        : "N/A",
                    variant: TextVariant.h4,
                    color: AppColors.white,
                    fontWeight: TextFontWeightVariant.h2,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DetailsList extends StatelessWidget {
  final InfoCryptoResponse highlightResponse;
  const _DetailsList({Key? key, required this.highlightResponse})
    : super(key: key);

  Widget _row(
    String title,
    String value, {
    Color? bgColor,
    bool paddedText = false,
    double bottomSpacing = 0, // 👈 extra spacing control
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomSpacing), // 👈 apply spacing below
      child: Container(
        width: double.infinity,
        color: bgColor ?? Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: paddedText
                  ? const EdgeInsets.symmetric(horizontal: 16.0)
                  : EdgeInsets.zero,
              child: Text(
                title,
                style: const TextStyle(color: Color(0xFF8EA3C6), fontSize: 14),
              ),
            ),
            Padding(
              padding: paddedText
                  ? const EdgeInsets.symmetric(horizontal: 16.0)
                  : EdgeInsets.zero,
              child: MdSnsText(
                value,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h1,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _row(
          'Open',
          highlightResponse.data != null &&
                  highlightResponse.data!.marketData != null &&
                  highlightResponse.data!.marketData!.open24h != null
              ? highlightResponse.data!.marketData!.open24h!.toStringAsFixed(2)
              : "N/A",
          bgColor: AppColors.color091224.withOpacity(0.8),
          paddedText: true,
        ),
        _row(
          '7d Low / 7d High',
          highlightResponse.data != null &&
                  highlightResponse.data!.marketData != null &&
                  highlightResponse.data!.marketData!.minLow7d != null
              ? '${highlightResponse.data!.marketData!.minLow7d!.toStringAsFixed(2)}/${highlightResponse.data != null && highlightResponse.data!.marketData != null && highlightResponse.data!.marketData!.maxHigh7d != null ? '${highlightResponse.data!.marketData!.maxHigh7d!.toStringAsFixed(2)} ' : "N/A"}'
              : "N/A",
          bgColor: AppColors.fieldColor,
          paddedText: true,
        ),
        _row(
          'Market Cap Dominance',
          highlightResponse.data != null &&
                  highlightResponse.data!.marketCap != null &&
                  highlightResponse.data!.marketCap!.marketCapDominance != null
              ? '${highlightResponse.data!.marketCap!.marketCapDominance!.toStringAsFixed(2)} '
              : "-",
          bgColor: AppColors.color091224.withOpacity(0.6),
          paddedText: true,
        ),
        _row(
          'Trading Volume',
          highlightResponse.data != null &&
                  highlightResponse.data!.marketData != null &&
                  highlightResponse.data!.marketData!.totalVolume != null
              ? formatNumbers(
                  highlightResponse.data!.marketData!.totalVolume!.usd,
                )
              : "-",

          bgColor: AppColors.fieldColor,
          paddedText: true,
        ),
        _row(
          'All Time High',
          highlightResponse.data != null &&
                  highlightResponse.data!.marketData != null &&
                  highlightResponse.data!.marketData!.ath != null
              ? formatNumbers(highlightResponse.data!.marketData!.ath!.usd)
              : "-",
          bgColor: AppColors.color091224.withOpacity(0.6),
          paddedText: true,
        ),

        // 👇 Last row with extra bottom spacing
        _row(
          'All Time Low',
          highlightResponse.data != null &&
                  highlightResponse.data!.marketData != null &&
                  highlightResponse.data!.marketData!.atl != null
              ? formatNumbers(highlightResponse.data!.marketData!.atl!.usd)
              : "-",
          bgColor: AppColors.fieldColor,
          paddedText: true,
          bottomSpacing: 16, // 👈 spacing below last row
        ),
      ],
    );
  }
}

String formatNumbers(num? number) {
  String formatted = NumberFormat.decimalPattern().format(number);
  return formatted;
}
