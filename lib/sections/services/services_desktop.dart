
import 'package:demirli_tech_website/configs/app_config.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:demirli_tech_website/model/company_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../configs/app_text.dart';
import '../../provider/scroll_provider.dart';

class ServicesDesktop extends StatefulWidget {
  const ServicesDesktop({Key? key}) : super(key: key);

  @override
  State<ServicesDesktop> createState() => _ServicesDesktopState();
}

class _ServicesDesktopState extends State<ServicesDesktop> {

  ColorFilter _colorFilter = ColorFilter.mode(Colors.white, BlendMode.srcATop);
  double _opacity = 0.0;

  void calculateRotation() {
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

    calculateRotation();

    return Container(
      width: double.infinity,
      height: AppSize.servicesSectionHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: AppSize.bodyDividerHeight!
          )
        )
      ),
      child: Stack(
        children: [
          Container(
            height: AppSize.navBarSize,
            alignment: Alignment.center,
            child: Text("Hizmetler", style: AppText.h1?.copyWith(color: Colors.white)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: CompanyService.companyServices.map(
              (companyService) {
                return AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 1),
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30)),
                        border: Border.all(
                          color:
                            Theme.of(context).colorScheme.primary,
                        )
                      ),
                      child: Stack(
                        children: [
                          Container(
                            padding: AppPadding.verticalL,
                            alignment: Alignment.topCenter,
                            child: Text(
                              companyService.title,
                              style: AppText.h2
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                          Container(
                            padding: AppPadding.verticalXXL,
                            alignment: Alignment.center,
                            child: ColorFiltered(
                              colorFilter: _colorFilter,
                              child: InkWell(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    if (value) {
                                      _colorFilter = const ColorFilter.mode(
                                        Colors.transparent,
                                        BlendMode.color
                                      );
                                    } else {
                                      _colorFilter = const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcATop
                                      );
                                    }
                                  });
                                },
                                child: Image.asset(companyService.logoAssetPath)
                              )
                            )
                          )
                        ],
                      )
                    ),
                  ),
                );
              }
            ).toList()
          )
        ],
      ),
    );
  }
}
