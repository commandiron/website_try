
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:flutter/material.dart';
import '../../configs/app_text.dart';

class ProductsDesktop extends StatelessWidget {
  const ProductsDesktop({Key? key}) : super(key: key);

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
          Container(
            alignment: Alignment.centerRight,
            padding: AppPadding.horizontalL,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 64,
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          )
        ],
      ),
    );
  }
}
