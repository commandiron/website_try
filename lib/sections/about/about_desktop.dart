
import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/configs/app_strings.dart';
import 'package:demirli_tech_website/sections/about/widget/about_base.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text_style.dart';
import 'widget/about_title.dart';

class AboutDesktop extends StatefulWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  State<AboutDesktop> createState() => _AboutDesktopState();
}

class _AboutDesktopState extends State<AboutDesktop> {

  @override
  Widget build(BuildContext context) {
    return AboutBase(
      child: Column(
        children: [
          const AboutTitle(),
          Row(
            children: [
              AppSpace.horizontalExpanded!,
              Expanded(
                flex: 3,
                child: Text(
                  AppStrings.aboutText!,
                  style: AppTextStyle.b1?.copyWith(color: Colors.white),
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 500,
                  child: Image.asset(AppAssets.companyLogoIconPath!),
                )
              ),
              AppSpace.horizontalExpanded!,
            ],
          )
        ],
      ),
    );
  }
}
