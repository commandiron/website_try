import 'dart:ui';
import 'package:demirli_tech_website/configs/app_size.dart';
import 'package:flutter/material.dart';
import '../../../configs/app_padding.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.homeSectionHeight!,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/construction_technology_.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
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
