import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final colorSchemeDark = ColorScheme.dark(
  primary: const Color(0xffF48B0B),

  primaryContainer: const Color(0xff1F1F1F),
  onPrimaryContainer: Colors.white,

  secondaryContainer: const Color(0xff242424),
  onSecondaryContainer: Colors.grey.shade200
);

final themeDark = ThemeData(
  colorScheme: colorSchemeDark,
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: colorSchemeDark.primaryContainer.withOpacity(0.75)
  )
);

final themeLight = themeDark;
