import 'package:flutter/material.dart';

import 'about/about.dart';
import 'contact/contact.dart';
import 'home/home.dart';
import 'products/products.dart';
import 'services/services.dart';

class BodySections {
  static const List<String> names = [
    "Ana Sayfa",
    "Ürünler",
    "Hizmetler",
    "Hakkımızda",
    "İletişim"
  ];
  static const List<Widget> views = [
    Home(),
    Products(),
    Services(),
    About(),
    Contact()
  ];
}