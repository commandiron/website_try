import 'package:demirli_tech_website/provider/scroll_provider.dart';
import 'package:demirli_tech_website/sections/home/widget/vision_category_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../configs/app_size.dart';
import 'home_expanded_divider.dart';

class HomeVisionCategories extends StatefulWidget {
  const HomeVisionCategories({required this.radius, required this.style, super.key});

  final double radius;
  final TextStyle style;

  @override
  State<HomeVisionCategories> createState() => _HomeVisionCategoriesState();
}

class _HomeVisionCategoriesState extends State<HomeVisionCategories> {

  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    Provider.of<ScrollProvider>(context).addOffsetListener(
      (offset) {
        WidgetsBinding.instance.addPostFrameCallback(
          (timeStamp) {
            if (offset >= AppSize.homeStartOffset! &&
                offset < AppSize.homeOffset!) {
              if (mounted) {
                setState(() {
                  _opacity = 1.0;
                });
              }
            } else {
              if (mounted) {
                setState(() {
                  _opacity = 0.0;
                });
              }
            }
          }
        );
      }
    );

    return AnimatedOpacity(
      opacity: _opacity,
      duration: const Duration(seconds: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          VisionCategoryButton(
            radius: widget.radius,
            title: "Fizibilite",
            style: widget.style,
            hasApp: true,
          ),
          const HomeExpandedDivider(),
          VisionCategoryButton(
            radius: widget.radius,
            title: "Tasarım",
            style: widget.style,
          ),
          const HomeExpandedDivider(),
          VisionCategoryButton(
            radius: widget.radius,
            title: "Uygulama",
            style: widget.style,
            hasApp: true,
          ),
          const HomeExpandedDivider(),
          VisionCategoryButton(
            radius: widget.radius,
            title: "Kontrol",
            style: widget.style,
          ),
          const HomeExpandedDivider(),
          VisionCategoryButton(
            radius: widget.radius,
            title: "Bakım",
            style: widget.style,
          ),
        ],
      ),
    );
  }
}
