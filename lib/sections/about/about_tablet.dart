
import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/configs/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../configs/app_config.dart';
import '../../configs/app_text_style.dart';
import '../../provider/scroll_provider.dart';
import 'widget/about_title.dart';

class AboutTablet extends StatefulWidget {
  const AboutTablet({Key? key}) : super(key: key);

  @override
  State<AboutTablet> createState() => _AboutTabletState();
}

class _AboutTabletState extends State<AboutTablet> {

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
      height: AppSize.servicesSectionHeight,
      color: Theme.of(context).colorScheme.primaryContainer,
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
        child: Column(
          children: [
            const AboutTitle(),
            Expanded(
              child: Image.asset(AppAssets.companyLogoIconPath!),
            ),
            AppSpace.verticalL!,
            Row(
              children: [
                AppSpace.horizontalExpanded!,
                Expanded(
                  flex: 3,
                  child: Text(
                    AppStrings.aboutText!,
                    style: AppTextStyle.b2?.copyWith(color: Colors.white),
                  ),
                ),
                AppSpace.horizontalExpanded!,
              ],
            ),
            AppSpace.verticalXXL!,
          ],
        ),
      ),
    );
  }
}
