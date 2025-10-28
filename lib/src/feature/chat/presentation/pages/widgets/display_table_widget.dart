import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/markdown_widget.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/extensions/number_formatter_extension.dart';
import '../../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';

// class DisplayTableWidgets extends StatelessWidget {
//   final List<ModelOfTable> modelOfTable;
//   final List<String> headings;
//   const DisplayTableWidgets({
//     super.key,
//     required this.modelOfTable,
//     required this.headings,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.color091224,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: AppColors.color0x0x1AB3B3B3, width: 1),
//       ),
//       clipBehavior: Clip.antiAlias,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: DataTable(
//               headingRowHeight: 40.h,
//               columnSpacing: 20,
//               horizontalMargin: 15,

//               dataRowMaxHeight: 60.h,
//               headingRowColor: WidgetStateProperty.resolveWith<Color?>((
//                 Set<WidgetState> states,
//               ) {
//                 return AppColors.color1B254B;
//               }),
//               columns: headings.map((item) {
//                 return DataColumn(
//                   label: MdSnsText(
//                     item.toString(),
//                     textAlign: TextAlign.center,
//                     variant: TextVariant.h5,
//                     fontWeight: TextFontWeightVariant.h2,
//                     color: AppColors.white,
//                   ),
//                 );
//               }).toList(),

//               rows: modelOfTable.asMap().entries.map((entry) {
//                 final index = entry.key;
//                 final item = entry.value;
//                 final color = index.isEven
//                     ? WidgetStateProperty.all(Colors.transparent)
//                     : WidgetStateProperty.all(AppColors.shadowColor);
//                 return DataRow(
//                   color: color,
//                   cells: [
//                     DataCell(
//                       MdSnsText(
//                         item.date,
//                         variant: TextVariant.h4,
//                         fontWeight: TextFontWeightVariant.h2,
//                         color: AppColors.white,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     DataCell(
//                       MdSnsText(
//                         Filters.systemNumberConvention(
//                           item.revenueAvg,
//                           isPrice: false,
//                           isAbs: false,
//                         ),
//                         variant: TextVariant.h4,
//                         fontWeight: TextFontWeightVariant.h2,
//                         color: AppColors.white,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     DataCell(
//                       MdSnsText(
//                         Filters.systemNumberConvention(
//                           item.ebitdaAvg,
//                           isPrice: false,
//                           isAbs: false,
//                         ),
//                         variant: TextVariant.h4,
//                         fontWeight: TextFontWeightVariant.h2,
//                         color: AppColors.white,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     DataCell(
//                       MdSnsText(
//                         Filters.systemNumberConvention(
//                           item.netIncomeAvg,
//                           isPrice: false,
//                           isAbs: false,
//                         ),
//                         variant: TextVariant.h4,
//                         fontWeight: TextFontWeightVariant.h2,
//                         color: AppColors.white,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     DataCell(
//                       MdSnsText(
//                         Filters.systemNumberConvention(
//                           item.epsAvg,
//                           isPrice: false,
//                           isAbs: false,
//                         ),
//                         variant: TextVariant.h4,
//                         fontWeight: TextFontWeightVariant.h2,
//                         color: AppColors.white,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ],
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// 🔹 Row Builder
// }

class TableColumn {
  final String key;
  final String header;

  TableColumn({required this.key, required this.header});
}

class TableData {
  final List<TableColumn> cols;
  final List<Map<String, dynamic>> data;

  TableData({required this.cols, required this.data});
}

class GPTDisplayableTableContainer extends StatefulWidget {
  final TableData tableData;

  const GPTDisplayableTableContainer({Key? key, required this.tableData})
    : super(key: key);

  @override
  State<GPTDisplayableTableContainer> createState() =>
      _GPTDisplayableTableContainerState();
}

class _GPTDisplayableTableContainerState
    extends State<GPTDisplayableTableContainer> {
  late MyDataSource _dataSource;

  @override
  void initState() {
    super.initState();
    _dataSource = MyDataSource(widget.tableData);
  }

  @override
  void didUpdateWidget(covariant GPTDisplayableTableContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.tableData != widget.tableData) {
      setState(() {
        _dataSource = MyDataSource(widget.tableData);
      });
    }
  }

  int _currentPage = 1;
  final int _itemsPerPage = 10;

  @override
  Widget build(BuildContext context) {
    final int _totalItems = widget.tableData.data.length;
    final double _totalPages = widget.tableData.data.length / 10;

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

    final List<Map<String, dynamic>> pagedData = widget.tableData.data
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

      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 630.h,
            child: SingleChildScrollView(
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
                columns: widget.tableData.cols
                    .map(
                      (c) => DataColumn(
                        label: MdSnsText(
                          c.header,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h2,
                          color: AppColors.white,
                        ),
                      ),
                    )
                    .toList(),

                rows:
                    MyDataSource(
                      TableData(cols: widget.tableData.cols, data: pagedData),
                    ).tableData.data.asMap().entries.map((entry) {
                      final index = entry.key;
                      final row = entry.value;
                      final color = index.isEven
                          ? WidgetStateProperty.all(Colors.transparent)
                          : WidgetStateProperty.all(AppColors.shadowColor);
                      return DataRow(
                        color: color,
                        cells: widget.tableData.cols
                            .map(
                              (col) => DataCell(
                                MdSnsText(
                                  Filters.systemNumberConvention(
                                    row[col.key]?.toString() ?? 'N/A',
                                    isPrice: false,
                                    isAbs: false,
                                  ),
                                  variant: TextVariant.h4,
                                  fontWeight: TextFontWeightVariant.h4,
                                  color: AppColors.white,
                                ),
                              ),
                            )
                            .toList(),
                      );
                    }).toList(),

                //  PaginatedDataTable(
                //   initialFirstRowIndex: 0,
                //   showFirstLastButtons: true,
                //   onPageChanged: (val) {},
                //   showEmptyRows: false,
                //   rowsPerPage: 5,
                //   headingRowHeight: 40.h,
                //   columnSpacing: 20,
                //   horizontalMargin: 15,
                //   dataRowMaxHeight: 60.h,
                //   availableRowsPerPage: const <int>[5, 5 * 2, 5 * 5, 5 * 10],
                //   arrowHeadColor: AppColors.white,
                //   headingRowColor: WidgetStateProperty.resolveWith<Color?>((
                //     Set<WidgetState> states,
                //   ) {
                //     return AppColors.color1B254B;
                //   }),

                //   columns: widget.tableData.cols
                //       .map(
                //         (c) => DataColumn(
                //           label: MdSnsText(
                //             c.header,
                //             variant: TextVariant.h4,
                //             fontWeight: TextFontWeightVariant.h2,
                //             color: AppColors.white,
                //           ),
                //         ),
                //       )
                //       .toList(),
                //   source: _dataSource,
              ),
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

class MyDataSource extends DataTableSource {
  final TableData tableData;

  MyDataSource(this.tableData);

  @override
  DataRow? getRow(int index) {
    if (index >= tableData.data.length) return null;
    final color = index.isEven
        ? WidgetStateProperty.all(AppColors.color091224)
        : WidgetStateProperty.all(AppColors.shadowColor);
    final row = tableData.data[index];
    return DataRow(
      color: color,
      cells: tableData.cols
          .map(
            (col) => DataCell(
              MdSnsText(
                Filters.systemNumberConvention(
                  row[col.key]?.toString() ?? 'N/A',
                  isPrice: false,
                  isAbs: false,
                ),
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => tableData.data.length;
  @override
  int get selectedRowCount => 0;
}
