import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.productsSectionHeight,
      color: Theme.of(context).colorScheme.primaryContainer,
      alignment: Alignment.topCenter,
    );
  }
}
