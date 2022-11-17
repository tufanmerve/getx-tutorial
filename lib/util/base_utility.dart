

import 'package:flutter/material.dart';

class PaddingUtility {
  ///Horizontal padding with custom value
  static EdgeInsets horizontal(double padding) => EdgeInsets.symmetric(horizontal: padding);

  ///Vertical padding with custom value
  static EdgeInsets vertical(double padding) => EdgeInsets.symmetric(vertical: padding);

  ///Only left padding with custom value
  static EdgeInsets left(double padding) => EdgeInsets.only(left: padding);

  ///Only right padding with custom value
  static EdgeInsets right(double padding) => EdgeInsets.only(right: padding);

  // /Only yop padding with custom value
  static EdgeInsets top(double padding) => EdgeInsets.only(top: padding);

  ///Only bottom padding with custom value
  static EdgeInsets bottom(double padding) => EdgeInsets.only(bottom: padding);

  ///All padding with custom value
  static EdgeInsets all(double padding) => EdgeInsets.all(padding);

  ///Default value is 125.0
  static double maxPaddingValue = 125.0;

  ///Default value is 80.0
  static double hugePaddingValue = 80.0;

  ///Default value is 60.0
  static double highPaddingValue = 60.0;

  ///Default value is 40.0
  static double bigPaddingValue = 40.0;

  ///Default value is 20.0
  static double normalPaddingValue = 20.0;

  ///Default value is 15.0
  static double miniPaddingValue = 15.0;

  ///Default value is 10.0
  static double smallPaddingValue = 12.0;

  ///Default value is 290.0
  static double iconPaddingValueValue = 180.0;

  ///Default value is 100.0
  static double welcomePaddingMaxValue = 100.0;

  ///Default value is 90.0
  static double welcomePaddingMinValue = 90.0;

  ///Default value is 5.0
  static double indicatorPaddingValue = 5.0;

  ///Default value is 2.0
  static double bottomSheetMinPaddingValue = 2.0;

  ///Default value is 2.0
  static double aboutUsPaddingValue = 2.0;
}

abstract class RadiusUtility {
  static double buttonRadius = 2.0;
  static double maxButtonRadius = 4.0;
  static double choosenCategoryRadius = 6.0;
  static double normalRadiusValue = 16.0;
  static double textFieldRadius = 20.0;
  static double bottomSheetRadius = 9.0;
  static double minWidhtRadius = 1.0;
  static double lowRadiusValue = 8.0;
}