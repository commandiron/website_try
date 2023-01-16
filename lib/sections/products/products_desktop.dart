
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';
import '../../configs/app_text.dart';

class ProductsDesktop extends StatelessWidget {
  const ProductsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.productsSectionHeight,
      color: Color(0xffFCFCFC),
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: AppSize.navBarSize,
            alignment: Alignment.center,
            child: Text(
              "Ürünler",
              style: AppText.h1!.copyWith(color: Theme.of(context).colorScheme.secondary)
            ),
          ),
        ],
      ),
    );
  }
}
