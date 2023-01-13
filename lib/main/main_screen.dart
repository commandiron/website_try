import 'package:demirli_tech_website/main/widgets/app_body.dart';
import 'package:demirli_tech_website/main/widgets/app_drawer.dart';
import 'package:demirli_tech_website/main/widgets/navBarDesktop.dart';
import 'package:demirli_tech_website/main/widgets/navBarTabletMobile.dart';
import 'package:demirli_tech_website/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/drawer_provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      drawer: !Responsive.isDesktop(context) ? AppDrawer() : null,
      body: Stack(
        children: [
          const AppBody(),
          Responsive.isTablet(context) || Responsive.isMobile(context)
            ? const NavBarTabletMobile()
            : const NavBarDesktop()
        ],
      )
    );
  }
}
