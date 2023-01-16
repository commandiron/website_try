
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text.dart';
import 'widget/project_cover.dart';

class ProductsDesktop extends StatelessWidget {
  const ProductsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.productsSectionHeight,
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: AppSize.navBarSize,
            child: Text("Ürünler", style: AppText.h1!),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      ProjectCover(asset: "assets/konut_maliyet_cover.png"),
                      Text("Konut Maliyet", style: AppText.h1?.copyWith(color: Colors.white),),
                    ],
                  ),
                )
              ),
              Container(
                width: 1,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5)
                ),
              ),
              Expanded(
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        ProjectCover(asset: "assets/konut_plan_cover.png"),
                        Text("Konut Plan", style: AppText.h1?.copyWith(color: Colors.white),),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
