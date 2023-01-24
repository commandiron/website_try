
import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/configs/app_strings.dart';
import 'package:demirli_tech_website/sections/about/widget/about_base.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text_style.dart';
import 'widget/about_title.dart';

class AboutTablet extends StatefulWidget {
  const AboutTablet({Key? key}) : super(key: key);

  @override
  State<AboutTablet> createState() => _AboutTabletState();
}

class _AboutTabletState extends State<AboutTablet> {

  @override
  Widget build(BuildContext context) {
    return AboutBase(
      child: Column(
        children: [
          const AboutTitle(),
          Expanded(
            child: Image.asset(
              Theme.of(context).brightness == Brightness.dark
                  ? AppAssets.companyLogoWhiteIconPath!
                  : AppAssets.companyLogoBlackIconPath!
            ),
          ),
          AppSpace.verticalL!,
          Row(
            children: [
              AppSpace.horizontalExpanded!,
              Expanded(
                flex: 3,
                child: Text(
                  AppStrings.aboutText!,
                  style: AppTextStyle.b2!,
                ),
              ),
              AppSpace.horizontalExpanded!,
            ],
          ),
          AppSpace.verticalXXL!,
        ],
      ),
    );
  }
}
