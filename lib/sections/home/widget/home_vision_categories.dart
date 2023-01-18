import 'package:demirli_tech_website/provider/scroll_provider.dart';
import 'package:demirli_tech_website/sections/home/widget/vision_category_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../configs/app_config.dart';
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

  void calculateOpacity() {
    if(AppConfig.animationEnabled!) {
      Provider.of<ScrollProvider>(context).addOffsetListener(
        (offset) {
          if (offset >= AppSize.homeAnimationStartOffset! && offset < AppSize.homeAnimationEndOffset!) {
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
    } else {
      _opacity = 1.0;
    }
  }

  @override
  Widget build(BuildContext context) {

    calculateOpacity();

    List<Widget> list = <Widget>[];
    for(var i = 0; i < AppConfig.visionCategories!.length - 1; i++){
      list.add(SizedBox(width: widget.radius * 2,));
      list.add(const HomeExpandedDivider());
      if(i == AppConfig.visionCategories!.length - 2) {
        list.add(SizedBox(width: widget.radius * 2,));
      }
    }

    return AnimatedOpacity(
      opacity: _opacity,
      duration: const Duration(seconds: 1),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(children: list),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: AppConfig.visionCategories!.map(
              (title) => VisionCategoryButton(
                radius: widget.radius,
                title: title,
                style: widget.style,
                hasApp: true,
              )
            ).toList()
          ),
        ],
      ),
    );
  }
}
