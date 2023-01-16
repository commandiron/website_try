
import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';
import '../../configs/app_text.dart';

class ProductsDesktop extends StatefulWidget {
  const ProductsDesktop({Key? key}) : super(key: key);

  @override
  State<ProductsDesktop> createState() => _ProductsDesktopState();
}

class _ProductsDesktopState extends State<ProductsDesktop> {
  late final CarouselController _carouselController;
  Offset _offset = Offset(0.1, 0);

  @override
  void initState() {
    _carouselController = CarouselController();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        setState(() {
          _offset = Offset.zero;
        });
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.productsSectionHeight,
      color: Theme.of(context).colorScheme.secondary,
      child: Stack(
        children: [
          Container(
            height: AppSize.navBarSize,
            alignment: Alignment.center,
            child: Text(
              "Ürünler",
              style: AppText.h1!.copyWith(
                color: Colors.white
              )
            ),
          ),
          AnimatedSlide(
            offset: _offset,
            duration: Duration(milliseconds: 500),
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1.0,
                height: AppSize.productsSectionHeight
              ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      alignment: Alignment.topLeft,
                      padding: AppPadding.allXXL,
                      child: Text('text $i', style: AppText.h1!.copyWith(color: Colors.white),)
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: AppPadding.horizontalL,
            child: InkWell(
              onTap: () {
                _carouselController.nextPage();
              },
              child: Icon(
                Icons.arrow_forward_ios,
                size: 64,
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          ),
        ],
      ),
    );
  }
}
