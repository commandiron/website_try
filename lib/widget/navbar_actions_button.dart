import 'package:demirli_tech_website/configs/app_button.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../configs/app_text.dart';
import '../provider/scroll_provider.dart';

class NavBarActionButton extends StatelessWidget {

  final String label;
  final int index;

  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Padding(
      padding: AppPadding.horizontalS!,
      child: TextButton(
        onPressed: () {
          scrollProvider.scrollDesktop(index);
        },
        style: AppButton.navBarActionButtonStyle,
        child: Padding(
          padding: AppPadding.navBarActionButtonPadding!,
          child: Text(
            label,
            style: AppText.h3!
          ),
        )
      ),
    );
  }
}
