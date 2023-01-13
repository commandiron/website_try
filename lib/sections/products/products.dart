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
    );
  }
}
