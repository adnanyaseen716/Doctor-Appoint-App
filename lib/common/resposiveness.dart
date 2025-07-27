import 'package:flutter/material.dart';

extension Responsiveness on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

class ResponsiveTextSize {
  double smallFontSize(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 320) {
      return 12.0;
    } else if (screenWidth <= 375) {
      return 13.0;
    } else {
      return 14.0;
    }
  }

  double mediumFontSize(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 320) {
      return 15.0;
    } else if (screenWidth <= 375) {
      return 16.0;
    } else {
      return 17.0;
    }
  }

  double largeFontSize(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 320) {
      return 18.0;
    } else if (screenWidth <= 375) {
      return 20.0;
    } else {
      return 22.0;
    }
  }
}
