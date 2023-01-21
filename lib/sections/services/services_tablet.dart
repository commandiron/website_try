
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/model/company_service.dart';
import 'package:demirli_tech_website/sections/services/widget/company_service_item.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text_style.dart';
import 'widget/services_base.dart';

class ServicesTablet extends StatelessWidget {
  const ServicesTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ServicesBase(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: AppSize.navBarHeight,
              alignment: Alignment.center,
              child: Text("Hizmetler", style: AppTextStyle.h1?.copyWith(color: Colors.white)),
            ),
          ),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: CompanyService.companyServices.map(
                (companyService) {
                  return Padding(
                    padding: AppPadding.horizontalM!,
                    child: CompanyServiceItem(
                      width: 300,
                      height: 300,
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
