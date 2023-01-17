import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';
import '../../configs/app_text.dart';
import '../../model/product.dart';
import 'widget/carousel_item_mobile.dart';

class ProductsMobile extends StatefulWidget {
  const ProductsMobile({required this.carouselKey, required this.carouselController, Key? key}) : super(key: key);

  final CarouselController carouselController;
  final Key carouselKey;

  @override
  State<ProductsMobile> createState() => _ProductsMobileState();
}

class _ProductsMobileState extends State<ProductsMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.productsSectionHeight,
      color: Theme.of(context).colorScheme.secondary,
      child: Stack(
        children: [
          buildTitle(),
          buildCarousel(),
          buildNextArrow()
        ],
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

  Widget buildCarousel() {
    return Padding(
      padding: AppPadding.verticalXXL!,
      child: CarouselSlider.builder(
        key: widget.carouselKey,
        itemCount: Product.products.length,
        carouselController: widget.carouselController,
        options: CarouselOptions(
          viewportFraction: 1.0,
          height: AppSize.productsSectionHeight,
        ),
        itemBuilder: (context, index, realIndex) {
          return CarouselItemMobile(product: Product.products[index]);
        },
      ),
    );
  }

  Widget buildNextArrow() {
    return Container(
      alignment: Alignment.centerRight,
      padding: AppPadding.horizontalL,
      child: InkWell(
        onTap: () {
          widget.carouselController.nextPage();
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
