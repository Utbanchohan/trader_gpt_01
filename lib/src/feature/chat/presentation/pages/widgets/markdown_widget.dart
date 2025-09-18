import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/theme/app_colors.dart';

// ignore: must_be_immutable
class ChatMarkdownWidget extends StatefulWidget {
  String message;
   ChatMarkdownWidget({super.key,required this.message});
  @override
  State<ChatMarkdownWidget> createState() => _ChatMarkdownWidgetState();
}

class _ChatMarkdownWidgetState extends State<ChatMarkdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                            styleSheet:
                                MarkdownStyleSheet.fromTheme(
                                  Theme.of(context),
                                ).copyWith(
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

                                  blockquote: const TextStyle(
                                    color: AppColors.white,
                                  ),
                                ),
                            onTapLink: (text, href, title) {
                              if (href != null) {
                                // launchUrl(Uri.parse(href)); // needs url_launcher
                              }
                            },
                          ),
                        );
                        
  }
}