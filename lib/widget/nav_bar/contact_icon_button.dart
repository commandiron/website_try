import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';

class ContactIconButton extends StatelessWidget {
  const ContactIconButton({required this.imagePath, required this.onTap, Key? key}) : super(key: key);

  final String imagePath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: AppPadding.horizontalS!,
        child: Image.asset(
          imagePath,
          width: 26,
        ),
      ),
    );
  }
}
