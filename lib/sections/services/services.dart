import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.servicesSectionHeight,
      color: Colors.yellow,
    );
  }
}