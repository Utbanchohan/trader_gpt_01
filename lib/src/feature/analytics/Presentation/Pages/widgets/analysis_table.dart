import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/analysis_data/analysis_data_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class AnalysisTable extends StatefulWidget {
  final String title;
  final Map<dynamic, EodData>? eodData;

  const AnalysisTable({super.key, required this.title, required this.eodData});

  @override
  State<AnalysisTable> createState() => _AnalysisTableState();
}

class _AnalysisTableState extends State<AnalysisTable> {
  int _currentPage = 1;
  final int _itemsPerPage = 10;

  @override
  Widget build(BuildContext context) {
    final int _totalItems = widget.eodData!.entries.length;
    final double _totalPages = widget.eodData!.entries.length / 10;

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

    final List<MapEntry<dynamic, EodData>> pagedData = widget.eodData!.entries
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
            child: MdSnsText(
              widget.title.toString(),
              color: AppColors.color9EAAC0,
              fontWeight: TextFontWeightVariant.h4,
              variant: TextVariant.h3,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowHeight: 40.h,
              columnSpacing: 20,
              horizontalMargin: 15,

              dataRowMaxHeight: 60.h,
              headingRowColor: WidgetStateProperty.resolveWith<Color?>((
                Set<WidgetState> states,
              ) {
                return AppColors.color1B254B;
              }),
              columns: [
                DataColumn(
                  label: MdSnsText(
                    "Date",
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Open',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'High',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Low',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Close',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),

                DataColumn(
                  label: MdSnsText(
                    'Volume',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    "Change %",
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Change \$',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'VWAP',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
              ],
              rows: pagedData.map((item) {
                return DataRow(
                  cells: [
                    DataCell(
                      MdSnsText(
                        _formatDate(item.key),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.value.open != null
                            ? item.value.open!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.value.high != null
                            ? item.value.high!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color06D54E,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.value.low != null
                            ? item.value.low!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color0xFFCD3438,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.value.close != null
                            ? item.value.close!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.value.volume != null
                            ? formatNumbers(item.value.volume!)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.value.changepercent != null
                            ? item.value.changepercent.toString()
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color:
                            item.value.changepercent == null ||
                                item.value.changepercent.toString().contains(
                                  "-",
                                )
                            ? AppColors.color0xFFCD3438
                            : AppColors.color06D54E,

                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.value.change != null
                            ? item.value.change!.toString()
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,

                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.value.vwap != null
                            ? item.value.vwap!.toStringAsFixed(2)
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
                      fontWeight: TextFontWeightVariant.h4,
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
