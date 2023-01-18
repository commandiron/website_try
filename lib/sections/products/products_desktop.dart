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
          WidgetsBinding.instance.addPostFrameCallback(
            (timeStamp) {
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
            }
          );
        }
      );
    } else {
      setState(() {
        _opacity = 1.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    calculateOpacity();

    final carouselProvider = Provider.of<CarouselProvider>(context);

    return Container(
      width: double.infinity,
      height: AppSize.productsSectionHeight,
      color: Theme.of(context).colorScheme.secondary,
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 1),
        child: Stack(
          children: [
            const ProductsTitle(),
            buildCarousel(carouselProvider.key, carouselProvider.controller),
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
}
