import 'package:demirli_tech_website/sections/home/widget/home_base.dart';
import 'package:demirli_tech_website/sections/home/widget/home_title.dart';
import 'package:demirli_tech_website/sections/home/widget/home_vision_categories.dart';
import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';
import '../../configs/app_text_style.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeBase(
      child: Padding(
        padding: AppPadding.homePaddingTablet!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTitle(
              titleWidthFactor: 1.0,
            ),
            Expanded(
              child: HomeVisionCategories(
                radius: 44,
                style: AppTextStyle.h3!,
              )
            )
          ]
        ),
      )
    );          
  }
}
