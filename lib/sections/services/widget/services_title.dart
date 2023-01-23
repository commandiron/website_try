import 'package:flutter/material.dart';

import '../../../configs/app_size.dart';
import '../../../configs/app_text_style.dart';
import '../../../model/body_section.dart';

class ServicesTitle extends StatelessWidget {
  const ServicesTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: AppSize.navBarHeight,
        alignment: Alignment.center,
        child: Text(
          BodySection.services.title,
          style: AppTextStyle.h1?.copyWith(color: Colors.white)
        ),
      ),
    );
  }
}
