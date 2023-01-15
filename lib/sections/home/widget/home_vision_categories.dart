import 'package:demirli_tech_website/sections/home/widget/vision_category_button.dart';
import 'package:flutter/material.dart';
import 'home_expanded_divider.dart';

class HomeVisionCategories extends StatelessWidget {
  const HomeVisionCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        VisionCategoryButton(
          title: "Fizibilite",
          isActive: true,
        ),
        HomeExpandedDivider(),
        VisionCategoryButton(
          title: "Tasarım",
        ),
        HomeExpandedDivider(),
        VisionCategoryButton(
          title: "Uygulama",
          isActive: true,
        ),
        HomeExpandedDivider(),
        VisionCategoryButton(
          title: "Kontrol",
        ),
        HomeExpandedDivider(),
        VisionCategoryButton(
          title: "Bakım",
        ),
      ],
    );
  }
}
