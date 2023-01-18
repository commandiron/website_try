import 'package:flutter/material.dart';

import '../../../configs/app_assets.dart';
import '../../../configs/app_padding.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_text.dart';
import '../../../model/product.dart';

class CarouselItemDesktop extends StatefulWidget {
  const CarouselItemDesktop({required this.product, Key? key}) : super(key: key);

  final Product product;

  @override
  State<CarouselItemDesktop> createState() => _CarouselItemDesktopState();
}

class _CarouselItemDesktopState extends State<CarouselItemDesktop> {


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(AssetImage(widget.product.logoAssetPath), context);
  }

  @override
  Widget build(BuildContext context) {
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
                  height: 96,
                  child: Image.asset(widget.product.logoAssetPath),
                ),
                AppSpace.verticalXL!,
                Container(
                  padding: AppPadding.horizontalS,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.title,
                        style: AppText.h2b!.copyWith(
                          color: Colors.white
                        ),
                      ),
                      AppSpace.verticalXL!,
                      Text(
                        widget.product.body,
                        style: AppText.b2!.copyWith(
                          color: Colors.white
                        ),
                      ),
                      AppSpace.verticalXL!,
                      Image.asset(
                        AppAssets.appStoreBadgePath!,
                        width: 160,
                      ),
                      AppSpace.verticalL!,
                      Image.asset(
                        AppAssets.googlePlayBadgePath!,
                        width: 160,
                      ),
                    ]
                  ),
                )
              ],
            ),
          ),
          AppSpace.horizontalXL!,
          Expanded(
            child: Container(
                alignment: Alignment.topCenter,
                child: Image.asset(widget.product.imageAssetPath)
            ),
          ),
          AppSpace.horizontalXL!,
        ],
      )
    );
  }
}
