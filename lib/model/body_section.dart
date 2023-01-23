import 'package:flutter/material.dart';

import '../sections/about/about.dart';
import '../sections/contact/contact.dart';
import '../sections/home/home.dart';
import '../sections/products/products.dart';
import '../sections/services/services.dart';

class BodySection {
  String title;
  Widget view;

  BodySection(
    {
      required this.title,
      required this.view,
    }
  );

  static List<BodySection> bodySections = [
    BodySection(
      title: "Ana Sayfa",
      view: const Home()
    ),
    BodySection(
        title: "Ürünler",
        view: const Products()
    ),
    BodySection(
        title: "Hizmetler",
        view: const Services()
    ),
    BodySection(
        title: "Hakkımızda",
        view: const About()
    ),
    BodySection(
        title: "İletişim",
        view: const Contact()
    ),
  ];
}