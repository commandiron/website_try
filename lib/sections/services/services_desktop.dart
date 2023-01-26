import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/model/company_service.dart';
import 'package:demirli_tech_website/sections/services/widget/company_service_item.dart';
import 'package:demirli_tech_website/sections/services/widget/services_title.dart';
import 'package:flutter/material.dart';

import 'widget/services_base.dart';

class ServicesDesktop extends StatelessWidget {
  const ServicesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ServicesBase(
      child: Stack(
        alignment: Alignment.center,
        children: [
          const ServicesTitle(),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: CompanyService.items.map(
                (companyService) {
                  return Padding(
                    padding: AppPadding.horizontalL!,
                    child: CompanyServiceItem(
                      width: 400,
                      height: 400,
                      defaultColor: Theme.of(context).colorScheme.onPrimaryContainer,
                      companyService: companyService
                    ),
                  );
                }
              ).toList()
            ),
          )
        ],
      ),
    );
  }
}
