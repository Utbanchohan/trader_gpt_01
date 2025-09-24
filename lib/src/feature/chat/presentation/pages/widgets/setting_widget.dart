import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

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
      title: Text(
        widget.title!,
        style: const TextStyle(color: Colors.white, fontSize: 16),
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
