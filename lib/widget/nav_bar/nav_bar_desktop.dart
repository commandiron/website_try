import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/helper/url_launcher.dart';
import 'package:demirli_tech_website/model/body_section.dart';
import 'package:demirli_tech_website/widget/nav_bar/contact_icon_button.dart';
import 'package:demirli_tech_website/widget/nav_bar/nav_bar_logo.dart';
import 'package:demirli_tech_website/widget/nav_bar/navbar_actions_button.dart';
import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';
import '../../configs/app_size.dart';
import '../../model/company_contact.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.navBarHeight,
      color: Theme.of(context).navigationBarTheme.backgroundColor,
      padding: AppPadding.navBarPadding,
      child: Row(
        children: [
          AppSpace.horizontalXL!,
          const NavBarLogo(),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...BodySection.values.asMap().entries.map(
                    (bodySection) {
                      if(bodySection.value != BodySection.contact) {
                        return NavBarActionButton(
                          label: bodySection.value.title,
                          index: bodySection.key,
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
          Row(
            children: CompanyContact.items.map(
              (companyContact) {
                return ContactIconButton(
                  iconPath: companyContact.iconPath,
                  iconOriginalColor: companyContact.iconOriginalColor,
                  onTap: () => openURL(companyContact.url),
                );
              }
            ).toList(),
          ),
          SizedBox(
            width: AppSize.logoWidth!,
            child: NavBarActionButton(
              label: BodySection.contact.title,
              index: 4,
              highlighted: true,
            ),
          ),
          AppSpace.horizontalXL!,
        ],
      ),
    );
  }
}
