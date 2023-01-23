import 'package:demirli_tech_website/model/body_section.dart';
import 'package:flutter/material.dart';

import '../../../configs/app_size.dart';
import '../../../configs/app_text_style.dart';

class AboutTitle extends StatelessWidget {
  const AboutTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.navBarHeight,
      alignment: Alignment.center,
      child: Text(
        BodySection.about.title,
        style: AppTextStyle.h1!
      ),
    );
  }
}
