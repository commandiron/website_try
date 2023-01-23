import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/configs/app_text_style.dart';
import 'package:demirli_tech_website/model/company_contact.dart';
import 'package:demirli_tech_website/sections/contact/widget/contact_base.dart';
import 'package:demirli_tech_website/sections/contact/widget/contact_footer.dart';
import 'package:demirli_tech_website/sections/contact/widget/contact_title.dart';
import 'package:flutter/material.dart';
import '../../helper/url_launcher.dart';
import '../../widget/nav_bar/contact_icon_button.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContactBase(
      child: Column(
        children: [
          const ContactTitle(),
          Padding(
            padding: AppPadding.horizontalL!,
            child: SelectionArea(
              child: Column(
                children: [
                  Text("Sosyal Medya", style: AppTextStyle.h3!),
                  AppSpace.verticalM!,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  AppSpace.verticalL!,
                  Text("Eposta", style: AppTextStyle.h3!),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppSpace.horizontalL!,
                      Text("info@demirli.tech", style: AppTextStyle.b1!),
                      AppSpace.horizontalM!,
                      InkWell(
                        onTap: () => openURL("mailto:info@demirli.tech"),
                        child: Icon(
                          Icons.mail,
                          color: Theme.of(context).colorScheme.primary,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  AppSpace.verticalL!,
                  Text("Ofis", style: AppTextStyle.h3!),
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppSpace.horizontalL!,
                        Text("Yıldızbakkal Taşköprü Cad. Demirli İş Merkezi Kadıköy - İSTANBUL", style: AppTextStyle.b1!),
                        AppSpace.horizontalM!,
                        InkWell(
                          onTap: () => openURL("https://goo.gl/maps/RNiqv558Wzu3nqeR7"),
                          child: Icon(
                            Icons.location_on,
                            color: Theme.of(context).colorScheme.primary,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppSpace.verticalL!,
                  Text("Telefon", style: AppTextStyle.h3!),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if(!kIsWeb)
                        AppSpace.horizontalL!,
                      Text("+90 535 508 55 52", style: AppTextStyle.b1!),
                      if(!kIsWeb)
                        Row(
                          children: [
                            AppSpace.horizontalM!,
                            InkWell(
                              onTap: () => openURL("tel:+90 535 508 55 52"),
                              child: Icon(
                                Icons.phone,
                                color: Theme.of(context).colorScheme.primary,
                                size: 16,
                              ),
                            ),
                          ],
                        )
                    ],
                  ),
                ],
              )
            ),
          ),
          const ContactFooter()
        ],
      ),
    );
  }
}