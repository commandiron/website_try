import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/sections/products/widget/products_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../configs/app_config.dart';
import '../../model/product.dart';
import '../../provider/carousel_provider.dart';
import '../../provider/scroll_provider.dart';
import 'widget/carousel_item_mobile.dart';
import 'widget/products_next_arrow.dart';

class ProductsMobile extends StatefulWidget {
  const ProductsMobile({Key? key}) : super(key: key);

  @override
  State<ProductsMobile> createState() => _ProductsMobileState();
}

class _ProductsMobileState extends State<ProductsMobile> {

  double _opacity = 0.0;

  void calculateOpacity() {
    if(AppConfig.animationEnabled!) {
      Provider.of<ScrollProvider>(context).addOffsetListener(
        (offset) {
          if(offset >= AppSize.productsStartOffset! / 2 && offset < AppSize.productsOffset!) {
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
                  return CarouselItemMobile(product: Product.products[index]);
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
