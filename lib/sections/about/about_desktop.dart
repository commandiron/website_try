
import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/configs/app_strings.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.servicesSectionHeight,
      color: Theme.of(context).colorScheme.primaryContainer,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: AppSize.navBarSize,
            alignment: Alignment.center,
            child: Text(
              "Hakkımızda",
              style: AppText.h1?.copyWith(color: Colors.white)
            ),
          ),
          Row(
            children: [
              AppSpace.horizontalExpanded!,
              Expanded(
                flex: 3,
                child: Text(
                  AppStrings.aboutText!,
                  style: AppText.b1?.copyWith(color: Colors.white),
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
