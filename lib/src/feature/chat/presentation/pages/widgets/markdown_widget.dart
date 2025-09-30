import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/new_chart_widget.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/extensions/symbol_image.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../domain/model/chat_response/chat_message_model.dart';
import 'chart_widget.dart';

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
  List<String> display;

  ChatMarkdownWidget({
    super.key,
    required this.name,
    required this.image,
    required this.message,
    required this.type,
    required this.display,
  });
  @override
  State<ChatMarkdownWidget> createState() => _ChatMarkdownWidgetState();
}

class _ChatMarkdownWidgetState extends State<ChatMarkdownWidget> {
  List<dynamic> xAxis = [];
  List<dynamic> yAxis = [];

  ModelOfAxis? model;

  ModelOfAxis changeDisplayAble(List<String> display) {
    if (display.isEmpty) return ModelOfAxis(yAxis: [], xAxis: []);

    final addNewxAxis = <String>[];
    final addNewyAxis = <double>[];

    for (final e in display) {
      final decoded = jsonDecode(e) as Map<String, dynamic>;
      final data = DisplayData.fromJson(decoded);

      if (data.xAxis?.data != null) {
        addNewxAxis.addAll((data.xAxis?.data ?? []).map((e) => e.toString()));
      }

      if (data.data != null) {
        addNewyAxis.addAll((data.data ?? []).map((e) => (e as num).toDouble()));
      }
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
    model = changeDisplayAble(widget.display);

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.message.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
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
                        child: SvgPicture.network(
                          getItemImage(ImageType.stock, widget.name),
                          fit: BoxFit.cover,
                          placeholderBuilder: (context) => SizedBox(
                            height: 20.h,
                            width: 20.w,
                            child: SizedBox(),
                          ),
                        ),
                      ),
                    ),
              SizedBox(width: 6),
              Visibility(
                visible: widget.name != "TDGPT",
                child: MdSnsText(
                  widget.name,
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h3,

                  color: AppColors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: widget.name == "TDGPT" ? 0 : 10),

          Container(
            width: widget.type == "user"
                ? MediaQuery.sizeOf(context).width * 0.6.w
                : MediaQuery.sizeOf(context).width * 0.75.w,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.type != "user"
                    ? model != null &&
                              model!.xAxis.isNotEmpty &&
                              model!.yAxis.isNotEmpty
                          ? SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.3.h,
                              width: MediaQuery.sizeOf(context).width * 0.75.w,
                              child: ChartExample(
                                data: model!.yAxis,
                                xAxis: model!.xAxis,
                              ),
                            )
                          : SizedBox()
                    : SizedBox(),
                SizedBox(
                  height:
                      widget.type != "user" &&
                          model != null &&
                          model!.xAxis.isNotEmpty &&
                          model!.yAxis.isNotEmpty
                      ? 10
                      : 0,
                ),
                MarkdownBody(
                  data: widget.message,
                  selectable: true,
                  styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context))
                      .copyWith(
                        blockquotePadding: EdgeInsets.all(0),
                        blockquoteDecoration: BoxDecoration(
                          color: Colors.transparent,
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
                        p: GoogleFonts.plusJakartaSans(
                          color: AppColors.white,
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

                        blockquote: const TextStyle(color: AppColors.white),
                      ),
                  onTapLink: (text, href, title) {
                    if (href != null) {
                      launchUrl(Uri.parse(href)); // needs url_launcher
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
