import 'package:flutter/material.dart';

import '../../../configs/app_assets.dart';
import '../../../configs/app_padding.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_text_style.dart';
import '../../../model/company_product.dart';

class CarouselItemDesktop extends StatefulWidget {
  const CarouselItemDesktop({required this.product, Key? key}) : super(key: key);

  final CompanyProduct product;

  @override
  State<CarouselItemDesktop> createState() => _CarouselItemDesktopState();
}

class _CarouselItemDesktopState extends State<CarouselItemDesktop> {

  double _imageOpacity = 0.5;

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
                        style: AppTextStyle.h2b!.copyWith(
                          color: Colors.white
                        ),
                      ),
                      AppSpace.verticalXL!,
                      Text(
                        widget.product.body,
                        style: AppTextStyle.b2!.copyWith(
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
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(_imageOpacity), BlendMode.srcATop),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if(value){
                        _imageOpacity = 0.1;
                      } else {
                        _imageOpacity = 0.5;
                      }
                    });
                  },
                  child: Image.asset(widget.product.imageAssetPath)
                )
              )
            ),
          ),
          AppSpace.horizontalXL!,
        ],
      )
    );
  }
}
