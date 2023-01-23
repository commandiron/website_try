import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

const colorSchemeLight = ColorScheme.light(
  primary: Color(0xffF48B0B),
  primaryContainer: Color(0xff1F1F1F),
  secondaryContainer: Color(0xff242424)
);

final themeLight = ThemeData(
  colorScheme: colorSchemeLight,
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: colorSchemeLight.primaryContainer.withOpacity(0.75)
  )
);

final themeDark = themeLight;
