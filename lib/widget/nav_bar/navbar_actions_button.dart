import 'package:demirli_tech_website/configs/app_button.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../configs/app_text_style.dart';
import '../../provider/scroll_provider.dart';

class NavBarActionButton extends StatelessWidget {

  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
    this.highlighted = false
  }) : super(key: key);

  final String label;
  final int index;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {

    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Padding(
      padding: AppPadding.horizontalS!,
      child: highlighted
        ? Padding(
          padding: AppPadding.horizontalM!,
          child: ElevatedButton(
            onPressed: () {
              scrollProvider.scroll(index);
            },
            child: Padding(
              padding: AppPadding.verticalS!,
              child: Text(
                label,
                style: AppTextStyle.b2!
              ),
            )
          ),
        )
        : TextButton(
        onPressed: () {
          scrollProvider.scroll(index);
        },
        style: AppButton.navBarActionButtonStyle,
        child: Padding(
          padding: AppPadding.verticalM!,
          child: Text(
            label,
            style: AppTextStyle.l1!
          ),
        )
      ),
    );
  }
}
