import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../configs/app_config.dart';
import '../../../configs/app_size.dart';
import '../../../provider/scroll_provider.dart';

class AboutBase extends StatefulWidget {
  const AboutBase({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  State<AboutBase> createState() => _AboutBaseState();
}

class _AboutBaseState extends State<AboutBase> {

  double _opacity = 0.0;

  void calculateOpacity() {
    if(AppConfig.animationEnabled!) {
      Provider.of<ScrollProvider>(context).addOffsetListener(
        (endOffset) {
          if(endOffset >= AppSize.aboutAnimationStartOffset!
              && endOffset < AppSize.aboutAnimationEndOffset!) {
            if(mounted) {
              setState(() {
                _opacity = 1.0;
              });
            }
          } else {
            if(mounted) {
              setState(() {
                _opacity = 0.0;
              });
            }
          }
        },
      );
    } else {
      _opacity = 1.0;
    }
  }

  @override
  Widget build(BuildContext context) {

    calculateOpacity();

    return Container(
      width: double.infinity,
      height: AppSize.aboutSectionHeight,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          border: Border(
              top: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                  width: AppSize.bodyDividerHeight!
              )
          )
      ),
      alignment: Alignment.center,
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 1),
        child: widget.child
      ),
    );
  }
}
