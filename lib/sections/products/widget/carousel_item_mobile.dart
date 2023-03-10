import 'package:flutter/material.dart';

import '../../../configs/app_assets.dart';
import '../../../configs/app_padding.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_text_style.dart';
import '../../../model/company_product.dart';

class CarouselItemMobile extends StatefulWidget {
  const CarouselItemMobile({required this.product, Key? key}) : super(key: key);

  final CompanyProduct product;

  @override
  State<CarouselItemMobile> createState() => _CarouselItemMobileState();
}

class _CarouselItemMobileState extends State<CarouselItemMobile> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(AssetImage(widget.product.logoAssetPath), context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.horizontalXXL,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 96,
            child: Image.asset(widget.product.logoAssetPath),
          ),
          AppSpace.verticalL!,
          Text(
            widget.product.name,
            style: AppTextStyle.h2b!,
          ),
          AppSpace.verticalXL!,
          Image.asset(
            widget.product.imageAssetPath,
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
