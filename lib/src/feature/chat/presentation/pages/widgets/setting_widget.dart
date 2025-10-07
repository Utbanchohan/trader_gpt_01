import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class SettingsCard extends StatefulWidget {
  IconData? icon;
  String? title;
  bool? value;
  Function onChanged;
  SettingsCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  State<SettingsCard> createState() => _SettingsCardState();
}

class _SettingsCardState extends State<SettingsCard> {
  bool webMode = true;
  bool report = true;
  bool deepAnalysis = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Icon(widget.icon, color: Colors.white),
      title: MdSnsText(
        widget.title!,
        color: AppColors.white,
        variant: TextVariant.h2,
      ),
      trailing: Transform.scale(
        scale: 0.8,
        child: Switch(
          value: widget.value!,
          onChanged: (val) {
            widget.onChanged(val);
          },
          activeColor: Colors.lightBlueAccent,
          activeTrackColor: AppColors.secondaryColor,
          inactiveThumbColor: AppColors.primaryColor,
          inactiveTrackColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
