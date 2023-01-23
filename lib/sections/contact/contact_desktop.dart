import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/configs/app_text_style.dart';
import 'package:demirli_tech_website/model/company_contact.dart';
import 'package:demirli_tech_website/sections/contact/widget/contact_base.dart';
import 'package:demirli_tech_website/sections/contact/widget/contact_footer.dart';
import 'package:demirli_tech_website/sections/contact/widget/contact_title.dart';
import 'package:flutter/material.dart';

import '../../helper/url_launcher.dart';
import '../../widget/nav_bar/contact_icon_button.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContactBase(
      child: Column(
        children: [
          ContactTitle(),
          SelectionArea(
            child: Column(
              children: [
                Text("Sosyal Medya", style: AppTextStyle.h3!.copyWith(color: Colors.white)),
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
                Text("Eposta", style: AppTextStyle.h3!.copyWith(color: Colors.white)),
                Text("info@demirli.tech", style: AppTextStyle.b1!.copyWith(color: Colors.white)),
                AppSpace.verticalL!,
                Text("Ofis", style: AppTextStyle.h3!.copyWith(color: Colors.white)),
                Text("Yıldızbakkal Taşköprü Cad. Demirli İş Merkezi Kadıköy - İSTANBUL", style: AppTextStyle.b1!.copyWith(color: Colors.white)),
                AppSpace.verticalL!,
                Text("Telefon", style: AppTextStyle.h3!.copyWith(color: Colors.white)),
                Text("+90 535 508 55 52", style: AppTextStyle.b1!.copyWith(color: Colors.white)),
              ],
            )
          ),
          ContactFooter()
        ],
      ),
    );
  }
}