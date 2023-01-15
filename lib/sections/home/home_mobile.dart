import 'dart:ui';

import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';
import '../../configs/app_space.dart';
import '../../configs/app_text.dart';
import '../../widget/vision_category_button_mobile.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1000,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/construction_technology_.jpg"),
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
            colorFilter: ColorFilter.mode(
                Colors.black, BlendMode.color
            )
        ),
      ),
      child: ClipRRect( // make sure we apply clip it properly
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: Padding(
              padding: AppPadding.homePadding!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FractionallySizedBox(
                        widthFactor: 1,
                        child: Text(
                          "İnşaat sektöründe mobil tabanlı teknoloji çözümleri sunuyoruz.",
                          style: AppText.h1b!.copyWith(
                              color: Colors.white
                          ),
                        ),
                      ),
                      AppSpace.yLarge!,
                      Text(
                        "Uçtan uca tüm inşaat sektörünün otomasyonu için gelin beraber çalışalım.",
                        style: AppText.h2!.copyWith(
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              VisionCategoryButtonMobile(title: "Fizibilite", isActive: true,),
                              Expanded(child: Divider(color: Theme.of(context).colorScheme.primary, height: 2, thickness: 2,),),
                              VisionCategoryButtonMobile(title: "Tasarım",),
                              Expanded(child: Divider(color: Theme.of(context).colorScheme.primary, height: 2, thickness: 2,),),
                              VisionCategoryButtonMobile(title: "Uygulama", isActive: true,),
                              Expanded(child: Divider(color: Theme.of(context).colorScheme.primary, height: 2, thickness: 2,),),
                              VisionCategoryButtonMobile(title: "Kontrol",),
                              Expanded(child: Divider(color: Theme.of(context).colorScheme.primary, height: 2, thickness: 2,),),
                              VisionCategoryButtonMobile(title: "Bakım",),
                            ],
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
