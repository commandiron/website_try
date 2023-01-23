import 'dart:ui';
import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';
import '../../../configs/app_padding.dart';

class HomeBase extends StatelessWidget {
  const HomeBase({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.homeSectionHeight!,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.homeBackgroundPath!),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: const Color(0xff1F1F1F).withOpacity(0.4),
            child: Padding(
              padding: AppPadding.homePadding!, 
              child: child
            ),
          ),
        ),
      ),
    );
  }
}
