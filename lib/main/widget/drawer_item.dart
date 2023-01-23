import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:flutter/material.dart';
import '../../configs/app_button.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({required this.title, required this.onPressed,  Key? key}) : super(key: key);

  final String title;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.verticalS!,
      child: TextButton(
        style: AppButton.navBarActionButtonStyle,
        onPressed: onPressed,
        child: Text(title)
      ),
    );
  }
}
