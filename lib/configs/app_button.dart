import 'package:flutter/material.dart';

class AppButton {
  static ButtonStyle? navBarActionButtonStyle;

  static init(BuildContext context) {
    navBarActionButtonStyle = ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(MaterialState.hovered)) {
            return Theme.of(context).colorScheme.primary;
          }
          return Theme.of(context).colorScheme.onPrimaryContainer;
        },
      ),
      overlayColor: MaterialStateProperty.all(Colors.transparent)
    );
  }
}