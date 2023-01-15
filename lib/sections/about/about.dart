import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.aboutSectionHeight,
      color: Colors.blue,
    );
  }
}