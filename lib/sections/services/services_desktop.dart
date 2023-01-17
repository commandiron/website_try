
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
      color: Theme.of(context).colorScheme.secondary,
      alignment: Alignment.center,
      child: Column(
        children: [
          Divider(
            color: Colors.white,
          ),
          Container(
            height: AppSize.navBarSize,
            alignment: Alignment.center,
            child: Text("Hizmetler", style: AppText.h1?.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
