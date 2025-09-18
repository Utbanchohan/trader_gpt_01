import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../../core/theme/app_colors.dart';

// ignore: must_be_immutable
class ChatMarkdownWidget extends StatefulWidget {
  String message;
  String name;
  String image;
  ChatMarkdownWidget({super.key,required this.name,required this.image, required this.message});
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
          children: [
          SizedBox(width: 6),
            Container(height: 20, width: 20, decoration: BoxDecoration(
              image: 
              DecorationImage(
                fit: BoxFit.cover,
                image: 
                widget.image.isEmpty?
              NetworkImage("https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"):NetworkImage(widget.image))
            ),),
            SizedBox(width: 6),
            MdSnsText(widget.name, size: 12, color: AppColors.white,fontWeight: FontWeight.w500,),
          ],
        ),
        SizedBox(height: 6),

        Container(
          width: MediaQuery.sizeOf(context).width / 1.5,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.bubbleColor,
            borderRadius: BorderRadius.circular(16),
          ),
          // child: Flexible(
          child: MarkdownBody(
            data: widget.message,
            selectable: true, // let user copy code
            styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context))
                .copyWith(
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
