import 'package:demirli_tech_website/sections/home/widget/home_background.dart';
import 'package:demirli_tech_website/sections/home/widget/home_title.dart';
import 'package:demirli_tech_website/sections/home/widget/home_vision_categories.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTitle(
            titleWidthFactor: 1.0,
          ),
          Expanded(
            child: HomeVisionCategories(
              radius: 44,
              style: AppText.h3!.copyWith(color: Colors.white),
            )
          )
        ]
      )
    );          
  }
}
