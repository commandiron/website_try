import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:demirli_tech_website/configs/app_button.dart';
import 'package:flutter/material.dart';
import 'app_padding.dart';
import 'app_size.dart';
import 'app_space.dart';
import 'app_strings.dart';
import 'app_text.dart';

class AppConfig {

  static bool? animationEnabled;
  static List<String>? visionCategories;
  static List<String>? services;

  static init(BuildContext context) {

    animationEnabled = true;

    visionCategories = [
      "Fizibilite",
      "Tasarım",
      "Uygulama",
      "Kontrol",
      "Bakım"
    ];

    services = [
      "Design & Development",
      "Akıllı İnşaat Uygulamaları",
      "Şantiye Tasarımı",
    ];

    AppSize.init();
    AppText.init();
    AppSpace.init();
    AppPadding.init();
    AppButton.init(context);
    AppStrings.init();
    AppAssets.init();
  }
}
