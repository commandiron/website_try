import 'dart:ui';

import 'package:demirli_tech_website/configs/app_padding.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/construction_technology_.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black, BlendMode.color
            )
        ),
      ),
      child: ClipRRect( // make sure we apply clip it properly
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: Padding(
              padding: AppPadding.homePadding!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "İnşaat sektöründe mobil tabanlı teknoloji çözümleri sunuyoruz.",
                    style: AppText.h1b!.copyWith(
                      color: Colors.white
                    ),
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