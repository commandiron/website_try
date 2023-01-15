import 'package:demirli_tech_website/sections/home/widget/vision_category_button.dart';
import 'package:flutter/material.dart';
import 'home_expanded_divider.dart';

class HomeVisionCategories extends StatelessWidget {
  const HomeVisionCategories({required this.radius, required this.style, super.key});

  final double radius;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        VisionCategoryButton(
          radius: radius,
          title: "Fizibilite",
          style: style,
          isActive: true,
        ),
        const HomeExpandedDivider(),
        VisionCategoryButton(
          radius: radius,
          title: "Tasarım",
          style: style,
        ),
        const HomeExpandedDivider(),
        VisionCategoryButton(
          radius: radius,
          title: "Uygulama",
          style: style,
          isActive: true,
        ),
        const HomeExpandedDivider(),
        VisionCategoryButton(
          radius: radius,
          title: "Kontrol",
          style: style,
        ),
        const HomeExpandedDivider(),
        VisionCategoryButton(
          radius: radius,
          title: "Bakım",
          style: style,
        ),
      ],
    );
  }
}
