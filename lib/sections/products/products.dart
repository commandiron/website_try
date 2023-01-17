import 'package:demirli_tech_website/sections/products/products_desktop.dart';
import 'package:demirli_tech_website/sections/products/products_mobile.dart';
import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ProductsMobile(),
      tablet: ProductsMobile(),
      desktop: ProductsDesktop()
    );
  }
}