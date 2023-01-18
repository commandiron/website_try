
import 'package:demirli_tech_website/configs/app_config.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
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

  double _opacity = 0.0;

  void calculateRotation() {
    if(AppConfig.animationEnabled!) {
      Provider.of<ScrollProvider>(context).addOffsetListener(
        (offset) {
          if(offset >= AppSize.servicesAnimationStartOffset! && offset < AppSize.servicesAnimationEndOffset!) {
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
      alignment: Alignment.topCenter,
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
          Padding(
            padding: AppPadding.allXL!,
            child: Row(
              children: AppConfig.services!.map(
                (title) => Expanded(
                  child: Padding(
                    padding: AppPadding.allXL!,
                    child: AnimatedOpacity(
                      opacity: _opacity,
                      duration: const Duration(seconds: 1),
                      child: Container(
                        height: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                          )
                        ),
                        child: Text(
                          title,
                          style: AppText.h2?.copyWith(color: Theme.of(context).colorScheme.primary,),
                        )
                      ),
                    ),
                  )
                )
              ).toList()
            ),
          )
        ],
      ),
    );
  }
}
