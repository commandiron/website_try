import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/configs/app_strings.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.contactSectionHeight!,
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: AppSize.navBarSize,
                alignment: Alignment.center,
                child: Text("İletişim", style: AppText.h1!),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: AppPadding.allM,
            child: Text(
              AppStrings.contactFooter!,
              style: AppText.b2!.copyWith(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}