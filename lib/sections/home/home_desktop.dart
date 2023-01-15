import 'package:demirli_tech_website/sections/home/widget/home_background.dart';
import 'package:demirli_tech_website/sections/home/widget/home_expanded_divider.dart';
import 'package:demirli_tech_website/sections/home/widget/home_title.dart';
import 'package:flutter/material.dart';
import 'widget/vision_category_button.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTitle(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                VisionCategoryButton(title: "Fizibilite", isActive: true,),
                HomeExpandedDivider(),
                VisionCategoryButton(title: "Tasarım",),
                HomeExpandedDivider(),
                VisionCategoryButton(title: "Uygulama", isActive: true,),
                HomeExpandedDivider(),
                VisionCategoryButton(title: "Kontrol",),
                HomeExpandedDivider(),
                VisionCategoryButton(title: "Bakım",),
              ],
            )
          )
        ]
      )
    );          
  }
}
