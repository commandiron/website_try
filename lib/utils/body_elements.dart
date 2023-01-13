import 'package:demirli_tech_website/sections/about.dart';
import 'package:demirli_tech_website/sections/contact.dart';
import 'package:demirli_tech_website/sections/products.dart';
import 'package:flutter/material.dart';

class BodyElements {
  static const List<Widget> views = [
    Products(),
    About(),
    Contact()
  ];
}