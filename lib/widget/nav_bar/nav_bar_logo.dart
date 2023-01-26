import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/scroll_provider.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({required this.width, Key? key}) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {

    final scrollProvider = Provider.of<ScrollProvider>(context);

    return InkWell(
      onTap: (){
        scrollProvider.scroll(0);
      },
      child: SizedBox(
        width: width,
        child: Image.asset(
          Theme.of(context).brightness == Brightness.dark
            ? AppAssets.companyTextLogoWhiteIconPath!
            : AppAssets.companyTextLogoBlackIconPath!
        ),
      )
    );
  }
}
