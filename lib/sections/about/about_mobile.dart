
import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/configs/app_strings.dart';
import 'package:demirli_tech_website/sections/about/widget/about_base.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text_style.dart';
import 'widget/about_title.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {

  @override
  Widget build(BuildContext context) {
    return AboutBase(
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
                  style: AppTextStyle.b3!,
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
