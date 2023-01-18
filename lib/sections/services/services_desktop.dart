
import 'package:demirli_tech_website/configs/app_config.dart';
import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';
import '../../configs/app_text.dart';

class ServicesDesktop extends StatelessWidget {
  const ServicesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.servicesSectionHeight,
      alignment: Alignment.center,
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
          Expanded(
            child: Padding(
              padding: AppPadding.allXL!,
              child: Row(
                children: AppConfig.services!.map(
                  (title) => Expanded(
                    child: Padding(
                      padding: AppPadding.allXL!,
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
                    )
                  )
                ).toList()
              ),
            )
          )
        ],
      ),
    );
  }
}
