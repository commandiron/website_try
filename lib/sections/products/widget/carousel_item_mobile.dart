import 'package:flutter/material.dart';

import '../../../configs/app_assets.dart';
import '../../../configs/app_padding.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_text.dart';
import '../../../model/product.dart';

class CarouselItemMobile extends StatelessWidget {
  const CarouselItemMobile({required this.product, Key? key}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.horizontalXXL,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 96,
            child: Image.asset(product.logoAssetPath),
          ),
          AppSpace.verticalL!,
          Text(
            product.title,
            style: AppText.h2b!.copyWith(
                color: Colors.white
            ),
          ),
          AppSpace.verticalXL!,
          Image.asset(
            product.imageAssetPath,
            height: 360,
          ),
          AppSpace.verticalXL!,
          Image.asset(
            AppAssets.appStoreBadgePath!,
            width: 160,
          ),
          AppSpace.verticalM!,
          Image.asset(
            AppAssets.googlePlayBadgePath!,
            width: 160,
          ),
        ],
      )
    );
  }
}
