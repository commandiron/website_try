import 'package:flutter/material.dart';

class AppSpace {
  static Widget? horizontalS;
  static Widget? horizontalM;
  static Widget? horizontalL;
  static Widget? verticalS;
  static Widget? verticalM;
  static Widget? verticalL;
  static Widget? horizontalExpanded;
  static Widget? verticalExpanded;

  static EdgeInsets? z;

  static void init() {
    horizontalS = const SizedBox(width: 4);
    horizontalM = const SizedBox(width: 8);
    horizontalL = const SizedBox(width: 16);

    verticalS = const SizedBox(height: 4);
    verticalM = const SizedBox(height: 8);
    verticalL = const SizedBox(height: 16);

    horizontalExpanded = const Expanded(child: SizedBox(width: double.infinity));
    verticalExpanded = const Expanded(child: SizedBox(height: double.infinity));
  }
}
