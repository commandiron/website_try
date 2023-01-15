import 'package:demirli_tech_website/sections/home/widget/home_background.dart';
import 'package:demirli_tech_website/sections/home/widget/home_title.dart';
import 'package:demirli_tech_website/sections/home/widget/home_vision_categories.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HomeTitle(),
          Expanded(
            child: HomeVisionCategories()
          )
        ]
      )
    );          
  }
}
