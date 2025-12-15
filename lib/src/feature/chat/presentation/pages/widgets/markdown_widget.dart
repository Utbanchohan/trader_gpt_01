import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/analysis_data/analysis_data_model.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/display_table_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/message_like_copy_icon.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/new_chart_widget.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/new_chart_widget_2.dart'
    hide ChartData;
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/extensions/symbol_image.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../analytics/Presentation/Pages/widgets/analytics_candle_stick_chart.dart';
import '../../../domain/model/chat_response/chat_message_model.dart';
import '../../../domain/model/updates_questions_model/updates_questions_model.dart';

class ModelOfAxis {
  final List<String> xAxis;
  final List<double> yAxis;

  const ModelOfAxis({required this.xAxis, required this.yAxis});
}

// ignore: must_be_immutable
class ChatMarkdownWidget extends StatefulWidget {
  String message;
  String name;
  String image;
  String type;
  String symbolType;
  List<String> display;
  String messageId;
  String runId;
  bool? isStreaming;
  List<AnalysisTask> updatesAskStream;

  ChatMarkdownWidget({
    super.key,
    required this.name,
    required this.image,
    required this.message,
    required this.type,
    required this.display,
    required this.symbolType,
    required this.messageId,
    required this.runId,
    required this.isStreaming,
    required this.updatesAskStream,
  });
  @override
  State<ChatMarkdownWidget> createState() => _ChatMarkdownWidgetState();
}

class _ChatMarkdownWidgetState extends State<ChatMarkdownWidget> {
  List<dynamic> xAxis = [];
  List<dynamic> yAxis = [];
  List<TableColumn> headings = [];
  final List<Map<String, dynamic>> dataTable = [];
  ModelOfAxis? model;
  List<ChartData> candleChartData = [];
  DisplayData? displayableData;

  ModelOfAxis changeDisplayAble(List<String> display) {
    if (display.isEmpty) return ModelOfAxis(yAxis: [], xAxis: []);

    final addNewxAxis = <String>[];
    final addNewyAxis = <double>[];

    for (final e in display) {
      try {
        final decoded = jsonDecode(e) as Map<String, dynamic>;
        final data = DisplayData.fromJson(decoded);
        displayableData = DisplayData.fromJson(decoded);
        if (data.chartType != null) {
          if (data.chartType == "candlestick") {
            for (int i = 0; i < data.xAxis!.data!.length; i++) {
              candleChartData.add(
                ChartData(
                  x: data.xAxis!.data![i],
                  y: [
                    (data.data![i][0]).toDouble(),
                    (data.data![i][1]).toDouble(),
                    (data.data![i][2]).toDouble(),
                    (data.data![i][3]).toDouble(),
                  ],
                ),
              );
            }
          } else {
            if (data.xAxis?.data != null) {
              addNewxAxis.addAll(
                (data.xAxis?.data ?? []).map((e) => e.toString()),
              );
            }

            if (data.data != null) {
              addNewyAxis.addAll(
                (data.data ?? []).map((e) => (e as num).toDouble()),
              );
            }
          }
        } else {
          if (data.data != null) {
            var data1 = decoded['cols'];
            if (data1 != null) {
              for (var uj in data1) {
                headings.add(TableColumn(key: uj['key'], header: uj['header']));
              }
            }

            for (var ij in data.data!) {
              dataTable.add(ij);
            }
          }
        }
      } catch (e) {}
    }

    return ModelOfAxis(yAxis: addNewyAxis, xAxis: addNewxAxis);
    // if (display.isNotEmpty) {
    //   final rawDisplay = display;
    //   final displayList = rawDisplay.map((e) {
    //     final decoded = jsonDecode(e); // String ko Map me convert
    //     return DisplayData.fromJson(decoded);
    //   }).toList();

    //   // Ab tum easily access kar sakte ho:
    //   for (final display in displayList) {
    //     // print("Chart Type: ${display.chartType}");
    //     // print("X Axis Title: ${display.xAxis?.xTitle}");
    //     // print("Y Axis Title: ${display.yAxis?.yTitle}");
    //     // print("X Axis Data: ${display.xAxis?.data}");
    //     // print("Y Axis Data: ${display.data}");

    //     xAxis.add(display.xAxis?.data);
    //     yAxis.add(display.data);
    //   }
    //   if (xAxis[0] != null) {
    //     for (var axis in xAxis[0]) {
    //       addNewxAxis.add(axis);
    //     }
    //   }
    //   if (yAxis[0] != null) {
    //     for (var axis in yAxis[0]) {
    //       addNewyAxis.add(axis);
    //     }
    //   }
    //   return ModelOfAxis(yAxis: addNewyAxis, xAxis: addNewxAxis);
    // } else {
    //   return ModelOfAxis(yAxis: [], xAxis: []);
    // }
  }

  @override
  void initState() {
    super.initState(); // ✔ Ye sabse pehle aayega

    model = changeDisplayAble(widget.display);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.updatesAskStream != null &&
          widget.updatesAskStream!.isNotEmpty) {
        openBottomSheet(context);
      }
    });
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          height: MediaQuery.sizeOf(context).height * 0.6,
          decoration: BoxDecoration(
            color: AppColors.color0xFF1B254B,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          ),
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title text
              MdSnsText(
                widget.updatesAskStream![0].definition,
                color: AppColors.white,
                variant: TextVariant.h2,
                fontWeight: TextFontWeightVariant.h4,
              ),
              SizedBox(height: 5.h),

              /// Completed row
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: AppColors.color0xFF12B981,
                    size: 12,
                  ),
                  SizedBox(width: 8.w),
                  MdSnsText(
                    "Completed",
                    color: AppColors.color0xFF9EAAC0,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ],
              ),

              SizedBox(height: 10.h),

              /// Scrollable List
              if (widget.updatesAskStream!.isNotEmpty &&
                  widget.updatesAskStream![0].childTasks!.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: widget.updatesAskStream![0].childTasks!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: MdSnsText(
                          widget
                              .updatesAskStream![0]
                              .childTasks![index]
                              .description,
                          color: AppColors.color0xFF9EAAC0,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  setModel() {
    model = changeDisplayAble(widget.display);
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Visibility(
      visible: widget.message.isNotEmpty,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: widget.type == "user"
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.name == "TDGPT"
                  ? Container(
                      height: 50.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Assets.images.appLogo.path),
                        ),
                      ),
                    )
                  : widget.type == "user"
                  ? Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        // shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: widget.image.isEmpty
                              ? AssetImage(Assets.images.placeholderimage.path)
                              : NetworkImage(widget.image),
                        ),
                      ),
                    )
                  : Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: widget.symbolType.toLowerCase() == "crypto"
                            ? Image.network(
                                getItemImage(ImageType.crypto, widget.name),
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return SvgPicture.network(
                                    "https://cdn-images.traderverse.io/crypto_dummy.svg",
                                    fit: BoxFit.cover,
                                  );
                                },
                              )
                            : SvgPicture.network(
                                getItemImage(ImageType.stock, widget.name),
                                fit: BoxFit.cover,
                                placeholderBuilder: (context) => SizedBox(
                                  height: 20.h,
                                  width: 20.w,
                                  child: SvgPicture.network(
                                    "https://cdn-images.traderverse.io/stock_dummy.svg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                errorBuilder: (context, error, stackTrace) {
                                  return SvgPicture.network(
                                    "https://storage.googleapis.com/analytics-images-traderverse/stock/mobile_app/TGPT-Blue.svg",
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                      ),
                    ),
              SizedBox(width: 6),
              Visibility(
                visible: widget.name != "TDGPT",
                child: Row(
                  children: [
                    MdSnsText(
                      widget.type == "user"
                          ? widget.name.capitalize()
                          : "TradersGPT : #" + widget.name,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h3,

                      color: AppColors.white,
                    ),
                    SizedBox(width: 6),

                    // Visibility(
                    //   visible: widget.isStreaming ?? false,
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       if (widget.updatesAskStream != null &&
                    //           widget.updatesAskStream!.isNotEmpty) {
                    //         // WidgetsBinding.instance.addPostFrameCallback((_) {
                    //         final RenderBox button =
                    //             context.findRenderObject() as RenderBox;
                    //         final RenderBox overlay =
                    //             Overlay.of(context).context.findRenderObject()
                    //                 as RenderBox;

                    //         final RelativeRect position = RelativeRect.fromRect(
                    //           Rect.fromPoints(
                    //             button.localToGlobal(
                    //               Offset.zero,
                    //               ancestor: overlay,
                    //             ),
                    //             button.localToGlobal(
                    //               Offset.zero,
                    //               ancestor: overlay,
                    //             ),
                    //           ),
                    //           Offset.zero & overlay.size,
                    //         );
                    //         setState(() {});

                    //         // showDialog(
                    //         //   context: context,
                    //         //   builder: (context) => AlertDialog(
                    //         //     backgroundColor: Colors.transparent,
                    //         //     content: Container(
                    //         //       width: 350,
                    //         //       margin: EdgeInsets.only(top: 20.h),
                    //         //       decoration: BoxDecoration(
                    //         //         color: AppColors.color0xFF1B254B,
                    //         //         borderRadius: BorderRadius.circular(5.r),
                    //         //       ),
                    //         //       padding: EdgeInsets.all(16.w),
                    //         //       child: Column(
                    //         //         mainAxisSize: MainAxisSize.min,
                    //         //         crossAxisAlignment:
                    //         //             CrossAxisAlignment.start,
                    //         //         children: [
                    //         //           MdSnsText(
                    //         //             widget
                    //         //                 .updatesAskStream![0]
                    //         //                 .definition,
                    //         //             color: AppColors.white,
                    //         //             variant: TextVariant.h2,
                    //         //             fontWeight: TextFontWeightVariant.h4,
                    //         //           ),

                    //         //           SizedBox(height: 5.h),

                    //         //           Row(
                    //         //             children: [
                    //         //               Icon(
                    //         //                 Icons.circle,
                    //         //                 color: AppColors.color0xFF12B981,
                    //         //                 size: 12,
                    //         //               ),
                    //         //               SizedBox(width: 8.w),
                    //         //               MdSnsText(
                    //         //                 "Completed",
                    //         //                 color: AppColors.color0xFF9EAAC0,
                    //         //                 variant: TextVariant.h4,
                    //         //                 fontWeight:
                    //         //                     TextFontWeightVariant.h4,
                    //         //               ),
                    //         //             ],
                    //         //           ),

                    //         //           SizedBox(height: 10.h),

                    //         //           widget.updatesAskStream.isNotEmpty &&
                    //         //                   widget
                    //         //                           .updatesAskStream[0]
                    //         //                           .childTasks!
                    //         //                           .length >
                    //         //                       0
                    //         //               ? SizedBox(
                    //         //                   height: 100.h,
                    //         //                   width: double.infinity,
                    //         //                   child: ListView.builder(
                    //         //                     itemCount: widget
                    //         //                         .updatesAskStream[0]
                    //         //                         .childTasks!
                    //         //                         .length,
                    //         //                     itemBuilder: (context, index) {
                    //         //                       return MdSnsText(
                    //         //                         widget
                    //         //                             .updatesAskStream[0]
                    //         //                             .childTasks![index]
                    //         //                             .description,
                    //         //                         color: AppColors
                    //         //                             .color0xFF9EAAC0,
                    //         //                         variant: TextVariant.h4,
                    //         //                         fontWeight:
                    //         //                             TextFontWeightVariant
                    //         //                                 .h4,
                    //         //                       );
                    //         //                     },
                    //         //                   ),
                    //         //                 )
                    //         //               : SizedBox(),
                    //         //         ],
                    //         //       ),
                    //         //     ),
                    //         //   ),
                    //         // );
                    //         // });
                    //       }
                    //     },
                    //     // child: Icon(
                    //     //   Icons.keyboard_arrow_down_outlined,
                    //     //   color: Colors.white,
                    //     // ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: widget.name == "TDGPT" ? 0 : 10),

          Column(
            crossAxisAlignment: widget.type == "user"
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Container(
                width: widget.type == "user"
                    ? MediaQuery.sizeOf(context).width * 0.6.w
                    : MediaQuery.sizeOf(context).width * 0.85.w,
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: widget.type == "user" ? 10 : 2,
                ),
                decoration: BoxDecoration(
                  color: widget.type == "user"
                      ? AppColors.bubbleColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                ),
                // child: Flexible(
                child: SizedBox(
                  width: widget.type == "user"
                      ? MediaQuery.sizeOf(context).width * 0.6.w
                      : MediaQuery.sizeOf(context).width * 0.85.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widget.type != "user"
                          ? displayableData != null &&
                                    displayableData!.chartType ==
                                        "candlestick" &&
                                    candleChartData.isNotEmpty
                                ? CustomCandleChart(
                                    fromChat: true,
                                    key: UniqueKey(),
                                    selectedItem: "",

                                    name: displayableData!.title.toString(),
                                    data: candleChartData,

                                    onPressed: (val) {
                                      if (!mounted) return;
                                    },
                                  )
                                : model != null &&
                                      model!.xAxis.isNotEmpty &&
                                      model!.yAxis.isNotEmpty
                                ? SizedBox(
                                    height:
                                        MediaQuery.sizeOf(context).height *
                                        0.3.h,
                                    width:
                                        MediaQuery.sizeOf(context).width *
                                        0.85.w,
                                    child: SizedBox(
                                      height: 500,
                                      child:
                                          //  ChartWidget(
                                          //   chartData: ChartDataNewWidget(
                                          //     title: 'Sales Performance',
                                          //     chartType: 'candlestick',
                                          //     data: model!.yAxis,
                                          //     xAxis: model!.xAxis,
                                          //     legend: ['Sales'],
                                          //   ),
                                          // ),
                                          ChartExample(
                                            data: model!.yAxis,
                                            xAxis: model!.xAxis,
                                          ),
                                    ),
                                  )
                                : dataTable.isNotEmpty && headings.isNotEmpty
                                ? GPTDisplayableTableContainer(
                                    tableData: TableData(
                                      cols: headings,
                                      data: dataTable,
                                    ),
                                    // headings: headings,
                                    // //  [
                                    // //   "Date",
                                    // //   "Revenue Avg",
                                    // //   "Ebita Avg",
                                    // //   "Net Income Avg",
                                    // //   "Eps Svg",
                                    // // ],
                                    // modelOfTable: modelOfTable,
                                  )
                                : SizedBox()
                          : SizedBox(),
                      SizedBox(
                        height:
                            (widget.type != "user" &&
                                    model != null &&
                                    model!.xAxis.isNotEmpty &&
                                    model!.yAxis.isNotEmpty) ||
                                (dataTable.isNotEmpty)
                            ? 10
                            : 0,
                      ),
                      SizedBox(
                        height:
                            displayableData != null &&
                                displayableData!.chartType == "candlestick" &&
                                candleChartData.isNotEmpty
                            ? 10
                            : 0,
                      ),
                      Markdown(
                        padding: EdgeInsets.all(0),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        data: widget.message,
                        listItemCrossAxisAlignment:
                            MarkdownListItemCrossAxisAlignment.start,
                        selectable: true,
                        controller: scrollController,

                        styleSheet:
                            MarkdownStyleSheet.fromTheme(
                              Theme.of(context),
                            ).copyWith(
                              tableColumnWidth: FixedColumnWidth(120.w),
                              tableScrollbarThumbVisibility: false,
                              tableBorder: TableBorder.all(
                                color: Colors.white24,
                              ),
                              tableCellsPadding: const EdgeInsets.all(8),
                              tableHead: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),

                              tableHeadAlign: TextAlign.center,
                              tablePadding: EdgeInsets.all(10),
                              tableCellsDecoration: BoxDecoration(),
                              tableVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              blockquotePadding: EdgeInsets.zero,
                              blockquoteDecoration: const BoxDecoration(
                                color: Colors.transparent,
                                border: Border(),
                              ),

                              horizontalRuleDecoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.transparent,
                                    width: 0,
                                  ),
                                ),
                              ),

                              pPadding: EdgeInsets.zero,
                              p: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                height: 1.5,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              h1: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              h2: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              h3: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                              h4: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                              h5: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                              h6: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                              code: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              tableBody: GoogleFonts.plusJakartaSans(
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                        onTapLink: (text, href, title) {
                          if (href != null) {
                            launchUrl(Uri.parse(href));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: widget.type == "user" ? 50 : 150,
                child: MessageLikeCopyIcon(
                  type: widget.type,
                  message: widget.message,
                  messageId: widget.messageId,
                  runId: widget.runId,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
