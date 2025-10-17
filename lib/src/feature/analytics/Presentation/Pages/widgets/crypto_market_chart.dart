import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/analysis_data/analysis_data_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../domain/model/crypto_market_model/crypto_market_model.dart';

class CryptoMarketChart extends StatefulWidget {
  final String title;
  final List<ExchangeData> data;

  const CryptoMarketChart({super.key, required this.title, required this.data});

  @override
  State<CryptoMarketChart> createState() => _CryptoMarketChartState();
}

class _CryptoMarketChartState extends State<CryptoMarketChart> {
  int _currentPage = 1;
  final int _itemsPerPage = 10;

  @override
  Widget build(BuildContext context) {
    final int _totalItems = widget.data.length;
    final double _totalPages = widget.data.length / 10;

    final double startItem = ((_currentPage - 1) * _itemsPerPage) + 1;
    final int endItem = _currentPage * _itemsPerPage > _totalItems
        ? _totalItems
        : _currentPage * _itemsPerPage;
    final String displayText = '$startItem-$endItem of $_totalItems';

    // Logic for navigation
    void goToFirstPage() => setState(() => _currentPage = 1);
    void goToPrevPage() =>
        setState(() => _currentPage = _currentPage > 1 ? _currentPage - 1 : 1);
    void goToNextPage() => setState(
      () => _currentPage = _currentPage < _totalPages
          ? _currentPage + 1
          : _totalPages.ceil(),
    );
    void goToLastPage() => setState(() => _currentPage = _totalPages.ceil());

    final bool isFirstPage = _currentPage == 1;
    final bool isLastPage = _currentPage == _totalPages;
    final int startIndex = (_currentPage - 1) * _itemsPerPage;

    final List<ExchangeData> pagedData = widget.data
        .toList()
        .skip(startIndex)
        .take(_itemsPerPage)
        .toList();

    return Container(
      decoration: BoxDecoration(
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.color0x0x1AB3B3B3, width: 1),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    MdSnsText(
                      widget.title.toString(),
                      variant: TextVariant.h3,
                      fontWeight: TextFontWeightVariant.h4,

                      color: AppColors.fieldTextColor,
                    ),
                    SizedBox(width: 5.w),
                    Icon(
                      Icons.info_outline,
                      size: 14.sp,
                      color: AppColors.fieldTextColor,
                    ),
                  ],
                ),
                MdSnsText(
                  "Description about Crypto Markets",
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h4,

                  color: AppColors.fieldTextColor,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor: WidgetStateProperty.resolveWith<Color?>((
                Set<WidgetState> states,
              ) {
                return AppColors.color1B254B;
              }),
              columns: [
                DataColumn(
                  label: MdSnsText(
                    "Exchange",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Pair',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Price',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Spread',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    '24H Volume',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),

                DataColumn(
                  label: MdSnsText(
                    '-2% Depth',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
              ],
              rows: pagedData.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final color = index.isEven
                    ? WidgetStateProperty.all(Colors.transparent)
                    : WidgetStateProperty.all(AppColors.shadowColor);
                return DataRow(
                  color: color,
                  cells: [
                    DataCell(
                      MdSnsText(
                        item.exchange,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.pair,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.price.toStringAsFixed(4),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.spread.toStringAsFixed(4),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        "${item.volume24hrs}",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.negTwoPercentDepth != null
                            ? item.negTwoPercentDepth!
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 2,
            child: Container(
              width: double.infinity, // 👈 ensures full width
              color: AppColors.color091224,
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: Align(
                alignment:
                    Alignment.centerRight, // 👈 moves whole row to right side
                child: Row(
                  mainAxisSize:
                      MainAxisSize.min, // 👈 keeps row as compact as needed
                  children: [
                    // 1. The Display Text
                    MdSnsText(
                      displayText,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h2,
                      color: AppColors.white,
                    ),

                    const SizedBox(width: 15), // Spacer
                    // 2. Go to First Page (<<)
                    _buildControlIcon(
                      Icons.first_page,
                      isFirstPage ? null : goToFirstPage,
                    ),

                    // 3. Go to Previous Page (<)
                    _buildControlIcon(
                      Icons.chevron_left,
                      isFirstPage ? null : goToPrevPage,
                    ),

                    // 4. Go to Next Page (>)
                    _buildControlIcon(
                      Icons.chevron_right,
                      isLastPage ? null : goToNextPage,
                    ),

                    // 5. Go to Last Page (>>)
                    _buildControlIcon(
                      Icons.last_page,
                      isLastPage ? null : goToLastPage,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildControlIcon(IconData icon, VoidCallback? onPressed) {
    return IconButton(
      icon: Icon(icon, color: Colors.white70, size: 16),
      onPressed: onPressed,
      // Add padding or a Material to get the hover/splash effect
      // padding: EdgeInsets.symmetric(horizontal: 4),
      splashRadius: 20,
    );
  }
}

String formatNumbers(num number) {
  String formatted = NumberFormat.decimalPattern().format(number);
  return formatted;
}

String _formatDate(String date) {
  try {
    final inputFormat = DateFormat('MM-dd-yyyy');
    final outputFormat = DateFormat('MM/dd/yyyy');

    final parsedDate = inputFormat.parse(date);
    final formatted = outputFormat.format(parsedDate);
    return formatted;
  } catch (_) {
    return '-';
  }
}

class PaginationWidget extends StatefulWidget {
  const PaginationWidget({super.key});

  @override
  State<PaginationWidget> createState() => _PaginationWidgetState();
}

class _PaginationWidgetState extends State<PaginationWidget> {
  int _currentPage = 1;
  int _itemsPerPage = 1;
  int _totalItems = 500;
  int _totalPages = 10;

  @override
  Widget build(BuildContext context) {
    final double startItem = ((_currentPage - 1) * _itemsPerPage) + 1;
    final int endItem = _currentPage * _itemsPerPage > _totalItems
        ? _totalItems
        : _currentPage * _itemsPerPage;
    final String displayText = '$startItem-$endItem of $_totalItems';

    // Logic for navigation
    void goToFirstPage() => setState(() => _currentPage = 1);
    void goToPrevPage() =>
        setState(() => _currentPage = _currentPage > 1 ? _currentPage - 1 : 1);
    void goToNextPage() => setState(
      () => _currentPage = _currentPage < _totalPages
          ? _currentPage + 1
          : _totalPages,
    );
    void goToLastPage() => setState(() => _currentPage = _totalPages);

    // Determine if buttons should be disabled (onPressed: null disables a button)
    final bool isFirstPage = _currentPage == 1;
    final bool isLastPage = _currentPage == _totalPages;
    return Container(
      // The dark background from your image
      color: Color(0xFF1E1E2C), // A dark blue/gray color for the background
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end, // Aligns content to the right
        children: [
          // 1. The Display Text
          MdSnsText(
            displayText,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h2,
            color: AppColors.white,
          ),

          const SizedBox(width: 15), // Spacer
          // 2. Go to First Page (<<)
          _buildControlIcon(
            Icons.first_page,
            isFirstPage ? null : goToFirstPage,
          ),

          // 3. Go to Previous Page (<)
          _buildControlIcon(
            Icons.chevron_left,
            isFirstPage ? null : goToPrevPage,
          ),

          // 4. Go to Next Page (>)
          _buildControlIcon(
            Icons.chevron_right,
            isLastPage ? null : goToNextPage,
          ),

          // 5. Go to Last Page (>>)
          _buildControlIcon(Icons.last_page, isLastPage ? null : goToLastPage),
        ],
      ),
    );
  }

  Widget _buildControlIcon(IconData icon, VoidCallback? onPressed) {
    return IconButton(
      icon: Icon(icon, color: Colors.white70, size: 16),
      onPressed: onPressed,
      // Add padding or a Material to get the hover/splash effect
      // padding: EdgeInsets.symmetric(horizontal: 4),
      // splashRadius: 10,
    );
  }
}
