import 'package:demirli_tech_website/provider/scroll_provider.dart';
import 'package:demirli_tech_website/sections/home/widget/vision_category_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../configs/app_config.dart';
import '../../../configs/app_size.dart';
import '../../../model/vision_category.dart';
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
    } else {
      _opacity = 1.0;
    }
  }

  @override
  Widget build(BuildContext context) {

    calculateOpacity();

    List<Widget> list = <Widget>[];
    for(var i = 0; i < VisionCategory.visionCategories.length - 1; i++){
      list.add(SizedBox(width: widget.radius * 2,));
      list.add(const HomeExpandedDivider());
      if(i == VisionCategory.visionCategories.length - 2) {
        list.add(SizedBox(width: widget.radius * 2,));
      }
    }

    return AnimatedOpacity(
      opacity: _opacity,
      duration: const Duration(seconds: 1),
      onEnd: () {
        print("onEnd");
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(children: list),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: VisionCategory.visionCategories.map(
              (visionCategory) => VisionCategoryButton(
                radius: widget.radius,
                title: visionCategory.title,
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
