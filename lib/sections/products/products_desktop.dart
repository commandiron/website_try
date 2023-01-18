import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/sections/products/widget/carousel_item_desktop.dart';
import 'package:demirli_tech_website/sections/products/widget/products_next_arrow.dart';
import 'package:demirli_tech_website/sections/products/widget/products_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../configs/app_config.dart';
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

  void calculateOpacity() {
    if(AppConfig.animationEnabled!) {
      Provider.of<ScrollProvider>(context).addOffsetListener(
        (offset) {
          if(offset >= AppSize.productsAnimationStartOffset! && offset < AppSize.productsAnimationEndOffset!) {
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
        },
      );
    } else {
      _opacity = 1.0;
    }
  }

  @override
  Widget build(BuildContext context) {

    calculateOpacity();

    final carouselProvider = Provider.of<CarouselProvider>(context);

    return Container(
      width: double.infinity,
      height: AppSize.productsSectionHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: AppSize.bodyDividerHeight!
          )
        )
      ),
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 1),
        child: Stack(
          children: [
            const ProductsTitle(),
            Padding(
              padding: AppPadding.verticalXXL!,
              child: CarouselSlider.builder(
                key: carouselProvider.key,
                itemCount: Product.products.length,
                carouselController: carouselProvider.controller,
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  height: AppSize.productsSectionHeight,
                ),
                itemBuilder: (context, index, realIndex) {
                  return CarouselItemDesktop(product: Product.products[index]);
                },
              ),
            ),
            ProductsNextArrow(
              onTap:() {
                carouselProvider.controller.nextPage();
              }
            )
          ],
        ),
      ),
    );
  }
}
