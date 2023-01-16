import 'package:demirli_tech_website/sections/body_sections.dart';
import 'package:demirli_tech_website/widget/nav_bar_logo.dart';
import 'package:demirli_tech_website/widget/navbar_actions_button.dart';
import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';
import '../../configs/app_size.dart';
import '../../configs/app_space.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.navBarSize,
      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.75),
      padding: AppPadding.navBarPadding,
      child: Row(
        children: [
          const NavBarLogo(),
          AppSpace.verticalL!,
          ...BodySections.names.asMap().entries.map(
            (sectionName) => NavBarActionButton(
              label: sectionName.value,
              index: sectionName.key
            )
          ),
        ],
      ),
    );
  }
}
