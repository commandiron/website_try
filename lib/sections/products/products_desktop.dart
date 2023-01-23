import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/sections/products/widget/carousel_item_desktop.dart';
import 'package:demirli_tech_website/sections/products/widget/products_next_arrow.dart';
import 'package:demirli_tech_website/sections/products/widget/products_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/company_product.dart';
import '../../provider/carousel_provider.dart';
import 'widget/products_base.dart';

class ProductsDesktop extends StatelessWidget {
  const ProductsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final carouselProvider = Provider.of<CarouselProvider>(context);

    return ProductsBase(
      child: Stack(
        children: [
          const ProductsTitle(),
          Padding(
            padding: AppPadding.verticalXXL!,
            child: CarouselSlider.builder(
              key: carouselProvider.key,
              itemCount: CompanyProduct.items.length,
              carouselController: carouselProvider.controller,
              options: CarouselOptions(
                viewportFraction: 1.0,
                height: AppSize.productsSectionHeight,
              ),
              itemBuilder: (context, index, realIndex) {
                return CarouselItemDesktop(product: CompanyProduct.items[index]);
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
    );
  }
}
