import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:flutter/material.dart';
import '../../configs/app_text.dart';
import 'widget/products_slider.dart';

class ProductsDesktop extends StatefulWidget {
  const ProductsDesktop({Key? key}) : super(key: key);

  @override
  State<ProductsDesktop> createState() => _ProductsDesktopState();
}

class _ProductsDesktopState extends State<ProductsDesktop> {
  late final CarouselController _carouselController;

  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.productsSectionHeight,
      color: Theme.of(context).colorScheme.secondary,
      child: Stack(
        children: [
          Container(
            height: AppSize.navBarSize,
            alignment: Alignment.center,
            child: Text("Ürünler",
                style: AppText.h1!.copyWith(color: Colors.white)),
          ),
          ProductsSlider(carouselController: _carouselController),
          Container(
              alignment: Alignment.centerRight,
              padding: AppPadding.horizontalL,
              child: InkWell(
                onTap: () {
                  _carouselController.nextPage();
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 64,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )),
        ],
      ),
    );
  }
}
