import 'package:flutter/material.dart';

class AppPadding {
  static const double horizontal = 15.0;
  static const double vertical = 10.0;

  static const EdgeInsets insidescreen = EdgeInsets.symmetric(
    horizontal: horizontal,
    vertical: vertical,
  );
}

class AppSpacing {
  static const double gridHorizontal = 15.0;
  static const double gridVertical = 15.0;

  static const SizedBox h5 = SizedBox(height: 5);
  static const SizedBox h10 = SizedBox(height: 10);
  static const SizedBox h20 = SizedBox(height: 20);

  static const SizedBox w5 = SizedBox(width: 5);
  static const SizedBox w10 = SizedBox(width: 10);
  static const SizedBox w20 = SizedBox(width: 20);
}

class AppMargin {
  static const double horizontal = 15.0;
  static const double vertical = 10.0;

  static const EdgeInsets screen = EdgeInsets.symmetric(
    horizontal: horizontal,
    vertical: vertical,
  );

  static const EdgeInsets onlyTop = EdgeInsets.only(top: 10);
  static const EdgeInsets onlyBottom = EdgeInsets.only(bottom: 10);
  static const EdgeInsets onlyLeft = EdgeInsets.only(left: 15);
  static const EdgeInsets onlyRight = EdgeInsets.only(right: 15);
}
