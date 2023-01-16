import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _offset = Offset.zero;
      });
    });
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
            child: Text("Ürünler",
                style: AppText.h1!.copyWith(color: Colors.white)),
          ),
          AnimatedSlide(
            offset: _offset,
            duration: Duration(milliseconds: 500),
            child: Padding(
              padding: AppPadding.verticalXXL!,
              child: CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  height: AppSize.productsSectionHeight
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          alignment: Alignment.topLeft,
                          padding: AppPadding.horizontalXXL,
                          child: Row(
                            children: [
                              Expanded(
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                  color: Colors.white),
                                            ),
                                            AppSpace.verticalXL!,
                                            Image.asset(
                                              "assets/app_store_badge.png",
                                            ),
                                            AppSpace.verticalXL!,
                                            Image.asset(
                                              "assets/google_play_badge.png",
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    padding: AppPadding.horizontalXXXL!
                                        .add(AppPadding.verticalL!),
                                    child: Image.asset(
                                      "assets/beson_spash.png",
                                    ),
                                  )),
                            ],
                          ));
                    },
                  );
                }).toList(),
              ),
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
              )),
        ],
      ),
    );
  }
}
