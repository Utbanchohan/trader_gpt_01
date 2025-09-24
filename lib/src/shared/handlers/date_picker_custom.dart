import 'package:flutter/cupertino.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

void showCupertinoDatePicker(
  BuildContext context,
  Function(DateTime datetime) onDateTimeChanged,
) {
  showCupertinoModalPopup(
    context: context,
    builder: (_) => Container(
      height: 300,
      color: CupertinoColors.systemBackground.resolveFrom(context),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              mode: CupertinoDatePickerMode.dateAndTime,
              onDateTimeChanged: onDateTimeChanged,
            ),
          ),
          CupertinoButton(
            child: MdSnsText('Done'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    ),
  );
}
