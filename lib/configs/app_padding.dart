import 'package:flutter/material.dart';

class AppPadding {
  static EdgeInsets? allS;
  static EdgeInsets? allM;
  static EdgeInsets? allL;
  static EdgeInsets? allXL;
  static EdgeInsets? allXXL;
  static EdgeInsets? allXXXL;

  static EdgeInsets? verticalXS;
  static EdgeInsets? verticalS;
  static EdgeInsets? verticalM;
  static EdgeInsets? verticalL;
  static EdgeInsets? verticalXL;
  static EdgeInsets? verticalXXL;

  static EdgeInsets? horizontalS;
  static EdgeInsets? horizontalM;
  static EdgeInsets? horizontalL;
  static EdgeInsets? horizontalXL;
  static EdgeInsets? horizontalXXL;
  static EdgeInsets? horizontalXXXL;


  static EdgeInsets? verticalXXLhorizontalL;

  static EdgeInsets? symmetric;

  static EdgeInsetsGeometry? navBarPadding;
  static EdgeInsets? homePaddingDesktop;
  static EdgeInsets? homePaddingTablet;
  static EdgeInsets? homePaddingMobile;

  static EdgeInsets? zero;

  static void init() {
    allS = const EdgeInsets.all(8);
    allM = const EdgeInsets.all(16);
    allL = const EdgeInsets.all(32);
    allXL = const EdgeInsets.all(64);
    allXXL = const EdgeInsets.all(128);
    allXXXL = const EdgeInsets.all(256);

    verticalXS = const EdgeInsets.symmetric(vertical: 4);
    verticalS = const EdgeInsets.symmetric(vertical: 8);
    verticalM = const EdgeInsets.symmetric(vertical: 16);
    verticalL = const EdgeInsets.symmetric(vertical: 32);
    verticalXL = const EdgeInsets.symmetric(vertical: 64);
    verticalXXL = const EdgeInsets.symmetric(vertical: 128);

    horizontalS = const EdgeInsets.symmetric(horizontal: 8);
    horizontalM = const EdgeInsets.symmetric(horizontal: 16);
    horizontalL = const EdgeInsets.symmetric(horizontal: 32);
    horizontalXL = const EdgeInsets.symmetric(horizontal: 64);
    horizontalXXL = const EdgeInsets.symmetric(horizontal: 128);
    horizontalXXXL = const EdgeInsets.symmetric(horizontal: 256);




    navBarPadding = horizontalL!.add(verticalM!);

    homePaddingDesktop = EdgeInsets.only(
      top: verticalXXL!.vertical,
      right: horizontalL!.horizontal,
      left: horizontalL!.horizontal,
    );
    homePaddingTablet = EdgeInsets.only(
      top: verticalXXL!.vertical,
      right: horizontalL!.horizontal,
      left: horizontalL!.horizontal,
    );
    homePaddingMobile = EdgeInsets.only(
      top: verticalXL!.vertical,
      right: horizontalM!.horizontal,
      left: horizontalM!.horizontal,
    );

    zero = EdgeInsets.zero;
  }
}
