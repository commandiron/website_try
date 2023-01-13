import 'package:demirli_tech_website/configs/app_button.dart';
import 'package:flutter/material.dart';

import 'app_padding.dart';
import 'app_space.dart';
import 'app_text.dart';

class AppConfig {

  static init(BuildContext context) {
    AppText.init();
    AppSpace.init();
    AppPadding.init();
    AppButton.init(context);
  }
}
