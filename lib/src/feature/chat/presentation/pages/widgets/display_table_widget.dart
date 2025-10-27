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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.color0x0x1AB3B3B3, width: 1),
      ),
      clipBehavior: Clip.antiAlias,
      height: 450,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SingleChildScrollView(
          child: PaginatedDataTable(
            showFirstLastButtons: true,
            onPageChanged: (val) {},
            showEmptyRows: true,
            rowsPerPage: 5,
            headingRowHeight: 40.h,
            columnSpacing: 20,
            horizontalMargin: 15,
            dataRowMaxHeight: 60.h,
            arrowHeadColor: AppColors.white,
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
            source: _dataSource,
          ),
        ),
      ),
    );
  }
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
                  row[col.key]?.toString() ?? '',
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
