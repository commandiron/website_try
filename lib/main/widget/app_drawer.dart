import 'package:demirli_tech_website/configs/app_assets.dart';
import 'package:demirli_tech_website/configs/app_space.dart';
import 'package:demirli_tech_website/widget/nav_bar/nav_bar_logo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/body_section.dart';
import '../../provider/scroll_provider.dart';
import 'drawer_item.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {

  @override
  Widget build(BuildContext context) {

    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      child: Column(
        children: [
          AppSpace.verticalXL!,
          const NavBarLogo(),
          AppSpace.verticalXL!,
          ListView.builder(
            itemCount: BodySection.values.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => DrawerItem(
              title: BodySection.values[index].title,
              onPressed: () => scrollProvider.scroll(index),
            )
          ),
          AppSpace.verticalExpanded!,
          FractionallySizedBox(
            widthFactor: 0.4,
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(AppAssets.companyOnlyLogoIconPath!)
            )
          )
          ,
          AppSpace.verticalXXL!,
        ],
      )
    );
  }
}
