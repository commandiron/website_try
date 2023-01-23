import 'package:demirli_tech_website/configs/app_text_style.dart';
import 'package:demirli_tech_website/sections/contact/widget/contact_base.dart';
import 'package:demirli_tech_website/sections/contact/widget/contact_footer.dart';
import 'package:demirli_tech_website/sections/contact/widget/contact_title.dart';
import 'package:flutter/material.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContactBase(
      child: Column(
        children: [
          ContactTitle(),
          Expanded(
            child: Center(
              child: SelectionArea(
                child: Text("info@demirli.tech", style: AppTextStyle.h1!)
              ),
            ),
          ),
          ContactFooter()
        ],
      ),
    );
  }
}