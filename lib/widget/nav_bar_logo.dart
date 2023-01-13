import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/scroll_provider.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final scrollProvider = Provider.of<ScrollProvider>(context);

    return InkWell(
      onTap: (){
        scrollProvider.scrollDesktop(0);
      },
      child: FractionallySizedBox(
        heightFactor: 0.75,
          child: Image.asset("assets/demirli_tech_logo_transparentbg_white_2.png")
      ),
    );
  }
}
