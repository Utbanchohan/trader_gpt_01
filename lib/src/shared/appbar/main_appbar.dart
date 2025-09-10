import 'package:flutter/material.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool centerTitle;
  final bool showLeading;
  final Widget? customLeading;
  final Color backgroundColor;
  final Color titleColor;
  final double elevation;

  const MainAppBar({
    super.key,
    required this.title,
    this.actions,
    this.centerTitle = true,
    this.showLeading = true,
    this.customLeading,
    this.backgroundColor = Colors.white,
    this.titleColor = Colors.black,
    this.elevation = 0,
    required int scrolledUnderElevation,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: showLeading ? 0 : 20,
      title: MdSnsText(title, size: 20, fontWeight: FontWeight.w400),
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      elevation: elevation,
      scrolledUnderElevation: 0,
      actions: actions,
      automaticallyImplyLeading: showLeading,
      leading:
          showLeading
              ? (customLeading ??
                  (ModalRoute.of(context)?.canPop == true
                      ? BackButton(color: titleColor)
                      : null))
              : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
