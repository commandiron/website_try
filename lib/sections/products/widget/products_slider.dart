import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../configs/app_padding.dart';
import '../../../configs/app_size.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_text.dart';
import '../../../model/product.dart';

class ProductsSlider extends StatelessWidget {
  const ProductsSlider({required this.carouselController, Key? key}) : super(key: key);

  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.verticalXXL!,
      child: CarouselSlider.builder(
        itemCount: Product.products.length,
        carouselController: carouselController,
        options: CarouselOptions(
          viewportFraction: 1.0,
          height: AppSize.productsSectionHeight,
        ),
        itemBuilder: (context, index, realIndex) {
          return buildCarouselItem(Product.products[index]);
        },
      ),
    );
  }

  Widget buildCarouselItem(Product product) {
    return Container(
      alignment: Alignment.topLeft,
      padding: AppPadding.horizontalXXL,
      height: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 96,
                  child: Image.asset(product.logoAssetPath),
                ),
                AppSpace.verticalXL!,
                Container(
                  padding: AppPadding.horizontalS,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: AppText.h2b!.copyWith(
                            color: Colors.white),
                      ),
                      AppSpace.verticalXL!,
                      Text(
                        product.body,
                        style: AppText.b2!.copyWith(
                          color: Colors.white
                        ),
                      ),
                      AppSpace.verticalXL!,
                      Image.asset(
                        AppAssets.appStoreBadgePath!,
                      ),
                      AppSpace.verticalXL!,
                      Image.asset(
                        AppAssets.googlePlayBadgePath!,
                      ),
                    ]
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Image.asset(product.imageAssetPath),
          )
        ],
      )
    );
  }
}
