import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/configs/app_strings.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text_style.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.contactSectionHeight!,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: AppSize.bodyDividerHeight!
          )
        )
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: AppSize.navBarHeight,
                alignment: Alignment.center,
                child: Text("İletişim", style: AppTextStyle.h1!),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: AppPadding.allM,
            child: Text(
              AppStrings.contactFooter!,
              style: AppTextStyle.b2!.copyWith(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}