import 'package:carousel_slider/carousel_controller.dart';
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

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: ProductsMobile(carouselController: _carouselController),
      tablet: ProductsMobile(carouselController: _carouselController),
      desktop: ProductsDesktop(carouselController: _carouselController)
    );
  }
}