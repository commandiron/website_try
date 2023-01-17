import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../configs/app_padding.dart';
import '../../../configs/app_size.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_text.dart';

class ProductsSlider extends StatelessWidget {
  const ProductsSlider({required this.carouselController, Key? key}) : super(key: key);

  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.verticalXXL!,
      child: CarouselSlider(
        carouselController: carouselController,
        options: CarouselOptions(
          viewportFraction: 1.0,
          height: AppSize.productsSectionHeight,
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return buildCarouselItem();
            },
          );
        }).toList(),
      ),
    );
  }

  Widget buildCarouselItem() {
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
                  child: Image.asset(
                    "assets/beson_logo.png",
                  ),
                ),
                AppSpace.verticalXL!,
                Container(
                  padding: AppPadding.horizontalS,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Konut Maliyet',
                        style: AppText.h2b!.copyWith(
                            color: Colors.white),
                      ),
                      AppSpace.verticalXL!,
                      Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. \n \nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
                        style: AppText.b2!.copyWith(
                          color: Colors.white
                        ),
                      ),
                      AppSpace.verticalXL!,
                      Image.asset(
                        "assets/app_store_badge.png",
                      ),
                      AppSpace.verticalXL!,
                      Image.asset(
                        "assets/google_play_badge.png",
                      ),
                    ]
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/beson_spash.png",
            ),
          )
        ],
      )
    );
  }
}
