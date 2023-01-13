import 'package:flutter/material.dart';

class AppSpace {
  static Widget? xSmall;
  static Widget? ySmall;
  static Widget? xMedium;
  static Widget? yMedium;
  static Widget? xLarge;
  static Widget? yLarge;
  static Widget? xExpanded;
  static Widget? yExpanded;

  static EdgeInsets? z;

  static void init() {
    xSmall = const SizedBox(width: 4);
    ySmall = const SizedBox(height: 4);

    xMedium = const SizedBox(width: 8);
    yMedium = const SizedBox(height: 8);

    xLarge = const SizedBox(width: 16);
    yLarge = const SizedBox(height: 16);

    xExpanded = const Expanded(child: SizedBox(width: double.infinity));
    yExpanded = const Expanded(child: SizedBox(height: double.infinity));
  }
}
