import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/configs/app_text.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      color: Theme.of(context).colorScheme.primaryContainer,
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Container(
            height: AppSize.navBarSize,
            alignment: Alignment.center,
            child: Text("Ürünler", style: AppText.h1?.copyWith(color: Colors.white),),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 8
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                        padding: AppPadding.allS!,
                        child: Container(color: Colors.red,),
                      )
                  ),
                  Expanded(
                    child: Padding(
                      padding: AppPadding.allS!,
                      child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.blue)),
                          AppSpace.yLarge!,
                          Expanded(child: Container(color: Colors.green)),
                        ],
                      ),
                    )
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
