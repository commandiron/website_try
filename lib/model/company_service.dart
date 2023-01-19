import 'package:flutter/material.dart';

class CompanyService {
  String title;
  String logoAssetPath;
  List<Color> highlightedIconColorList;

  CompanyService(
      {
        required this.title,
        required this.logoAssetPath,
        required this.highlightedIconColorList
      }
      );

  static List<CompanyService> companyServices = [
    CompanyService(
      logoAssetPath: "assets/images/design_development_icon_512.png",
      title: "Design & Development",
      highlightedIconColorList: [
        Color(0xff03D8DE),
        Color(0xffFB01FF),
      ]
    ),
    CompanyService(
      logoAssetPath: "assets/images/smart_construction_icon_512.png",
      title: "Akıll İnşaat Uygulamaları",
      highlightedIconColorList: [Color(0xffF48B0B), Color(0xffF48B0B),]
    ),
    CompanyService(
      logoAssetPath: "assets/images/smart_construction_icon_512.png",
      title: "Yapay Zeka Araştırma ve Uygulama",
      highlightedIconColorList: [Color(0xffF48B0B), Color(0xffF48B0B),]
    ),
  ];
}