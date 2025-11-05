import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../../shared/widgets/loading_widget.dart';

class DateRangePickerWidget extends StatefulWidget {
  final bool loading;
  final void Function(DateTime? from, DateTime? to) onShowPressed;

  const DateRangePickerWidget({
    super.key,
    required this.onShowPressed,
    required this.loading,
  });

  @override
  State<DateRangePickerWidget> createState() => _DateRangePickerWidgetState();
}

class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
  final DateFormat _fmt = DateFormat('MM/dd/yyyy');
  DateTime? _fromDate;
  DateTime? _toDate;

  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();

    // 👇 Default dates set
    _fromDate = DateTime(now.year - 2, now.month, now.day);
    _toDate = now;

    // 👇 Fill text fields with default formatted values
    _fromController.text = _fmt.format(_fromDate!);
    _toController.text = _fmt.format(_toDate!);
  }

  Future<void> _pickDate({required bool isFrom}) async {
    final now = DateTime.now();

    // 👇 Default initial values
    final initial = isFrom
        ? (_fromDate ?? DateTime(now.year - 2, now.month, now.day))
        : (_toDate ?? now);

    final firstDate = DateTime(1970);
    final lastDate = DateTime(2100);

    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.dark(
              primary: Color(0xFF2BB673),
              onPrimary: Colors.white,
              surface: Color(0xFF0B1220),
              onSurface: Colors.white,
            ),
            dialogBackgroundColor: const Color(0xFF0B1220),
          ),
          child: child ?? const SizedBox.shrink(),
        );
      },
    );

    if (picked != null) {
      setState(() {
        if (isFrom) {
          _fromDate = picked;
          _fromController.text = _fmt.format(picked);
        } else {
          _toDate = picked;
          _toController.text = _fmt.format(picked);
        }
      });
    }
  }

  InputDecoration _buildDecoration({required String hint}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      hintText: hint,
      hintStyle: const TextStyle(color: Color(0xFFBFC7D6), fontSize: 14),
      filled: true,
      fillColor: const Color(0xFF2A2F3B),
      suffixIcon: const Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Icon(Icons.calendar_today, size: 20, color: AppColors.white),
      ),
      suffixIconConstraints: const BoxConstraints(minWidth: 36, minHeight: 36),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }

  Widget _dateField({
    required String label,
    required TextEditingController controller,
    required VoidCallback onTap,
  }) {
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            label,
            color: AppColors.white,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h4,
          ),
          const SizedBox(height: 6),
          GestureDetector(
            onTap: onTap,
            child: AbsorbPointer(
              child: TextFormField(
                controller: controller,
                decoration: _buildDecoration(hint: 'mm/dd/yyyy'),
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _fromController.dispose();
    _toController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _dateField(
                label: 'From',
                controller: _fromController,
                onTap: () => _pickDate(isFrom: true),
              ),
              const SizedBox(width: 12),
              _dateField(
                label: 'To',
                controller: _toController,
                onTap: () => _pickDate(isFrom: false),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            height: 44,
            child: ElevatedButton(
              onPressed: () {
                if (!widget.loading) {
                  widget.onShowPressed(_fromDate, _toDate);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2BB673),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
              ),
              child: widget.loading
                  ? SizedBox(
                      height: 20,
                      width: 20,
                      child: LoadingWidget(
                        height: 20,
                        width: 20,
                        color: AppColors.white,
                      ),
                    )
                  : const Text(
                      'SHOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.6,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
