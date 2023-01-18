import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/sections/products/widget/carousel_item_desktop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../configs/app_text.dart';
import '../../model/product.dart';
import '../../provider/carousel_provider.dart';
import '../../provider/scroll_provider.dart';

class ProductsDesktop extends StatefulWidget {
  const ProductsDesktop({Key? key}) : super(key: key);

  @override
  State<ProductsDesktop> createState() => _ProductsDesktopState();
}

class _ProductsDesktopState extends State<ProductsDesktop> {

  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {

    final scrollController = Provider.of<ScrollProvider>(context).controller;
    scrollController.addListener(() {
      if(scrollController.offset >= AppSize.productsStartOffset! / 2 && scrollController.offset < AppSize.productsOffset!) {
        if(mounted) {
          setState(() {
            _opacity = 1.0;
          });
        }
      } else {
        if(mounted) {
          setState(() {
            _opacity = 0.0;
          });
        }
      }
    });

    final carouselProvider = Provider.of<CarouselProvider>(context);

    return Container(
      width: double.infinity,
      height: AppSize.productsSectionHeight,
      color: Theme.of(context).colorScheme.secondary,
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 1000),
        child: Stack(
          children: [
            buildTitle(),
            buildCarousel(carouselProvider.key, carouselProvider.controller),
            buildNextArrow(carouselProvider.controller)
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Container(
      height: AppSize.navBarSize,
      alignment: Alignment.center,
      child: Text("Ürünler",
          style: AppText.h1!.copyWith(color: Colors.white)),
    );
  }

  Widget buildCarousel(Key key, CarouselController controller) {
    return Padding(
      padding: AppPadding.verticalXXL!,
      child: CarouselSlider.builder(
        key: key,
        itemCount: Product.products.length,
        carouselController: controller,
        options: CarouselOptions(
          viewportFraction: 1.0,
          height: AppSize.productsSectionHeight,
        ),
        itemBuilder: (context, index, realIndex) {
          return CarouselItemDesktop(product: Product.products[index]);
        },
      ),
    );
  }

  Widget buildNextArrow(CarouselController controller) {
    return Container(
      alignment: Alignment.centerRight,
      padding: AppPadding.horizontalL,
      child: InkWell(
        onTap: () {
          controller.nextPage();
        },
        child: Icon(
          Icons.arrow_forward_ios,
          size: 64,
          color: Theme.of(context).colorScheme.primary,
        ),
      )
    );
  }
}
