import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../../core/theme/app_colors.dart';

// ignore: must_be_immutable
class ChatMarkdownWidget extends StatefulWidget {
  String message;
  String name;
  String image;
  String type;

  ChatMarkdownWidget({
    super.key,
    required this.name,
    required this.image,
    required this.message,
    required this.type,
  });
  @override
  State<ChatMarkdownWidget> createState() => _ChatMarkdownWidgetState();
}

class _ChatMarkdownWidgetState extends State<ChatMarkdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                : Container(
                    height: 20.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: widget.image.isEmpty
                            ? AssetImage(Assets.images.placeholderimage.path)
                            : NetworkImage(widget.image),
                      ),
                    ),
                  ),
            SizedBox(width: 6),
            Visibility(
              visible: widget.name != "TDGPT",
              child: MdSnsText(
                widget.name,
                fontWeight: FontWeight.w500,
                size: 12,
                color: AppColors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 6),

        Container(
          width:
           widget.type == "user"
              ? 
              MediaQuery.sizeOf(context).width * 0.6.w
              :
               MediaQuery.sizeOf(context).width * 0.75.w
,
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
          child: MarkdownBody(
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
                // launchUrl(Uri.parse(href)); // needs url_launcher
              }
            },
          ),
        ),
      ],
    );
  }
}
