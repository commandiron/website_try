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

  late CarouselController _carouselController;
  late GlobalKey _uniqueKey;

  @override
  void initState() {
    _carouselController = CarouselController();
    _uniqueKey = GlobalKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: ProductsMobile(carouselKey: _uniqueKey,carouselController: _carouselController),
      tablet: ProductsMobile(carouselKey: _uniqueKey,carouselController: _carouselController),
      desktop: ProductsDesktop(carouselKey: _uniqueKey, carouselController: _carouselController)
    );
  }
}