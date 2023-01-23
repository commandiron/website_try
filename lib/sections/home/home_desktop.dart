import 'package:demirli_tech_website/sections/home/widget/home_base.dart';
import 'package:demirli_tech_website/sections/home/widget/home_title.dart';
import 'package:demirli_tech_website/sections/home/widget/home_vision_categories.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text_style.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeBase(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTitle(
            titleWidthFactor: 0.5,
          ),
          Expanded(
            child: HomeVisionCategories(
              radius: 80,
              style: AppTextStyle.h2!
            )
          )
        ]
      )
    );          
  }
}
