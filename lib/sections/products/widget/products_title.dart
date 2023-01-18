import 'package:flutter/material.dart';

import '../../../configs/app_size.dart';
import '../../../configs/app_text.dart';

class ProductsTitle extends StatelessWidget {
  const ProductsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.navBarSize,
      alignment: Alignment.center,
      child: Text("Ürünler",
          style: AppText.h1!.copyWith(color: Colors.white)),
    );
  }
}
