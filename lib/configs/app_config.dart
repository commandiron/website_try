import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:demirli_tech_website/configs/app_button.dart';
import 'package:flutter/material.dart';
import 'app_padding.dart';
import 'app_size.dart';
import 'app_space.dart';
import 'app_strings.dart';
import 'app_text_style.dart';

class AppConfig {

  static bool? animationEnabled;

  static init(BuildContext context) {

    animationEnabled = true;

    AppSize.init();
    AppTextStyle.init(context);
    AppSpace.init();
    AppPadding.init();
    AppButton.init(context);
    AppStrings.init();
    AppAssets.init();
  }
}
