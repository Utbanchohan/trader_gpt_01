import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../core/routes/routes.dart';

class ShowInfoPopup extends StatefulWidget {
  final String text;
  final Widget child;
  final String question;
  final ChatRouting chatRouting;

  const ShowInfoPopup({
    Key? key,
    required this.text,
    required this.child,
    required this.question,
    required this.chatRouting,
  }) : super(key: key);

  @override
  State<ShowInfoPopup> createState() => _ShowInfoPopupState();
}

class _ShowInfoPopupState extends State<ShowInfoPopup> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  void _showOverlay() {
    if (_overlayEntry != null) return;

    final overlay = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            // Background to detect outside taps
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: _removeOverlay,
                child: const SizedBox.expand(),
              ),
            ),

            // Popup container (below the text)
            Positioned(
              width: MediaQuery.of(context).size.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                offset: Offset(-5.w, 22.h),
                showWhenUnlinked: false,
                child: Material(
                  color: Colors.transparent,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        _removeOverlay(); // first close overlay
                        context.pushNamed(
                          AppRoutes.swipeScreen.name,
                          extra: {
                            "chatRouting": widget.chatRouting,
                            "initialIndex": 1,
                            "question": widget.question,
                          },
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 12.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.color0xFF1B254B,
                          borderRadius: BorderRadius.circular(6.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: MdSnsText(
                          widget.text,
                          color: AppColors.white,
                          variant: TextVariant.h3,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    overlay.insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _showOverlay,
        behavior: HitTestBehavior.translucent,
        child: widget.child,
      ),
    );
  }
}
