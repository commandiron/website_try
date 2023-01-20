import 'dart:ui';

import 'package:flutter/material.dart';

class CompanyContact {
  String url;
  String imagePath;
  Color imageOriginalColor;

  CompanyContact(
    {
      required this.url,
      required this.imagePath,
      required this.imageOriginalColor,
    }
  );

  static List<CompanyContact> companyContacts = [
    CompanyContact(
      url: "https://linkedin.com/in/emirdemirli/",
      imagePath: "assets/images/linkedin_icon_20.png",
      imageOriginalColor: Colors.red
    ),
    CompanyContact(
      url: "https://instagram.com/emirdemirli/",
      imagePath: "assets/images/instagram_icon_20.png",
      imageOriginalColor: Colors.blue
    ),
    CompanyContact(
      url: "https://facebook.com/emirdemirli",
      imagePath: "assets/images/facebook_icon_20.png",
      imageOriginalColor: Colors.green
    ),
    CompanyContact(
      url: "https://api.whatsapp.com/send?phone=905355085552",
      imagePath: "assets/images/whatsapp_icon_20.png",
        imageOriginalColor: Colors.yellow
    ),
  ];
}