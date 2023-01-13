import 'package:flutter/material.dart';

import 'about/about.dart';
import 'contact/contact.dart';
import 'home/home.dart';
import 'products/products.dart';

class BodySections {
  static const List<String> names = [
    "Ana Sayfa",
    "Ürünler",
    "Hakkımızda",
    "İletişim"
  ];
  static const List<Widget> views = [
    Home(),
    Products(),
    About(),
    Contact()
  ];
}