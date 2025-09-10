

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../core/theme/app_colors.dart';

$showMessage(String message, {bool isError = false}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: kIsWeb ? ToastGravity.TOP : ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: !isError ? AppColors.primaryColor : Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
    webBgColor: !isError ? "#121521" : '#E57373',
  );
}

$hidleLoading(BuildContext context) {
  context.pop();
}

$showLoading(BuildContext context, {String message = "Processing..."}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    // useRootNavigator: false,
    builder: (context) {
      return Dialog(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator.adaptive(),
              SizedBox(height: 16),
              Text(
                message,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
              ),
            ],
          ),
        ),
      );
    },
  );
}