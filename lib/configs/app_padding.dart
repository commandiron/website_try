
import 'package:flutter/material.dart';

import 'app_size.dart';

class AppPadding {
  static EdgeInsets? allS;
  static EdgeInsets? allM;
  static EdgeInsets? allL;
  static EdgeInsets? allXL;
  static EdgeInsets? allXXL;
  static EdgeInsets? allXXXL;

  static EdgeInsets? verticalS;
  static EdgeInsets? verticalM;
  static EdgeInsets? verticalL;
  static EdgeInsets? verticalXL;
  static EdgeInsets? verticalXXL;

  static EdgeInsets? horizontalS;
  static EdgeInsets? horizontalM;
  static EdgeInsets? horizontalL;

  static EdgeInsets? symmetric;

  static EdgeInsets? navBarPadding;
  static EdgeInsets? navBarActionButtonPadding;
  static EdgeInsets? homePadding;
  static EdgeInsets? productPadding;

  static EdgeInsets? zero;

  static void init() {
    allS = const EdgeInsets.all(8);
    allM = const EdgeInsets.all(16);
    allL = const EdgeInsets.all(32);
    allXL = const EdgeInsets.all(64);
    allXXL = const EdgeInsets.all(128);
    allXXXL = const EdgeInsets.all(256);

    verticalS = const EdgeInsets.symmetric(
        vertical: 8
    );
    verticalM = const EdgeInsets.symmetric(
        vertical: 16
    );
    verticalL = const EdgeInsets.symmetric(
        vertical: 32
    );
    verticalXL = const EdgeInsets.symmetric(
        vertical: 64
    );
    verticalXXL = const EdgeInsets.symmetric(
        vertical: 128
    );

    horizontalS = const EdgeInsets.symmetric(
      horizontal: 8
    );
    horizontalM = const EdgeInsets.symmetric(
        horizontal: 16
    );
    horizontalL = const EdgeInsets.symmetric(
        horizontal: 32
    );

    navBarPadding = EdgeInsets.symmetric(
        horizontal: horizontalM!.horizontal,
        vertical: verticalS!.vertical
    );

    navBarActionButtonPadding = EdgeInsets.symmetric(
        horizontal: horizontalS!.horizontal,
        vertical: verticalS!.vertical
    );

    homePadding = EdgeInsets.only(
      top: verticalXXL!.vertical,
      right: horizontalL!.horizontal,
      left: horizontalL!.horizontal,
    );

    productPadding = EdgeInsets.only(
      top: AppSize.navBarSize!,
      right: horizontalL!.horizontal,
      left: horizontalL!.horizontal,
    );

    zero = EdgeInsets.zero;
  }
}