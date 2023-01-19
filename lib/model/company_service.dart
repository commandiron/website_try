import 'dart:ui';

import 'package:flutter/material.dart';

class CompanyService {
  String title;
  String logoAssetPath;
  ColorFilter highlightedIconColorFilter;

  CompanyService(
      {
        required this.title,
        required this.logoAssetPath,
        required this.highlightedIconColorFilter
      }
      );

  static List<CompanyService> companyServices = [
    CompanyService(
      logoAssetPath: "assets/images/design_development_icon_512.png",
      title: "Design & Development",
      highlightedIconColorFilter: const ColorFilter.mode(
        Colors.transparent,
        BlendMode.color
      )
    ),
    CompanyService(
      logoAssetPath: "assets/images/smart_construction_icon_512.png",
      title: "Akıll İnşaat Uygulamaları",
      highlightedIconColorFilter: const ColorFilter.mode(
        Color(0xffF48B0B),
        BlendMode.srcATop
      )
    ),
    CompanyService(
      logoAssetPath: "assets/images/smart_construction_icon_512.png",
      title: "Yapay Zeka Araştırma ve Uygulama",
      highlightedIconColorFilter: const ColorFilter.mode(
          Colors.red,
          BlendMode.srcATop
      )
    ),
  ];
}