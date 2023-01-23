import 'package:flutter/material.dart';

import '../sections/about/about.dart';
import '../sections/contact/contact.dart';
import '../sections/home/home.dart';
import '../sections/products/products.dart';
import '../sections/services/services.dart';

enum BodySection {

  home("Ana Sayfa", Home()),
  products("Ürünler", Products()),
  services("Hizmetler", Services()),
  about("Hakkımızda", About()),
  contact("İletişim", Contact());

  const BodySection(
    this.title,
    this.view
  );

  final String title;
  final Widget view;
}