
import 'package:demirli_tech_website/configs/app_config.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/model/company_service.dart';
import 'package:demirli_tech_website/sections/services/widget/company_service_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../configs/app_text_style.dart';
import '../../provider/scroll_provider.dart';

class ServicesTablet extends StatefulWidget {
  const ServicesTablet({Key? key}) : super(key: key);

  @override
  State<ServicesTablet> createState() => _ServicesTabletState();
}

class _ServicesTabletState extends State<ServicesTablet> {
  
  double _opacity = 0.0;

  void calculateOpacity() {
    if(AppConfig.animationEnabled!) {
      Provider.of<ScrollProvider>(context).addOffsetListener(
        (endOffset) {
          if(endOffset >= AppSize.servicesAnimationStartOffset!
              && endOffset < AppSize.servicesAnimationEndOffset!) {
            if(mounted) {
              setState(() {
                _opacity = 1.0;
              });
            }
          } else {
            if(mounted) {
              setState(() {
                _opacity = 0.0;
              });
            }
          }
        },
      );
    } else {
      _opacity = 1.0;
    }
  }

  @override
  Widget build(BuildContext context) {

    calculateOpacity();

    return Container(
      width: double.infinity,
      height: AppSize.servicesSectionHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: AppSize.bodyDividerHeight!
          )
        )
      ),
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
                  return AnimatedOpacity(
                    opacity: _opacity,
                    duration: const Duration(seconds: 1),
                    child: Padding(
                      padding: AppPadding.horizontalM!,
                      child: CompanyServiceItem(
                        width: 300,
                        height: 300,
                        companyService: companyService
                      ),
                    )
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
