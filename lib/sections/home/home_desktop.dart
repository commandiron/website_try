import 'package:demirli_tech_website/sections/home/widget/home_background.dart';
import 'package:demirli_tech_website/sections/home/widget/home_title.dart';
import 'package:demirli_tech_website/sections/home/widget/home_vision_categories.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTitle(
            titleWidthFactor: 0.5,
          ),
          Expanded(
            child: HomeVisionCategories(
              radius: 80,
              style: AppText.h2!.copyWith(color: Colors.white)
            )
          )
        ]
      )
    );          
  }
}
