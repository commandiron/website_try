import 'package:demirli_tech_website/sections/body_sections.dart';
import 'package:demirli_tech_website/widget/nav_bar_logo.dart';
import 'package:demirli_tech_website/widget/navbar_actions_button.dart';
import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';
import '../../configs/app_size.dart';

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
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...BodySections.names.asMap().entries.map(
                    (sectionName) {
                      if(sectionName.value != "İletişim") {
                        return NavBarActionButton(
                          label: sectionName.value,
                          index: sectionName.key,
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    }
                  ),
                ],
              ),
            )
          ),
          SizedBox(
            width: AppSize.logoWidth!,
            child: const NavBarActionButton(
              label: "İletişim",
              index: 4,
              highlighted: true,
            ),
          )
        ],
      ),
    );
  }
}
