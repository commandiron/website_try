import 'package:demirli_tech_website/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configs/app_config.dart';
import '../provider/drawer_provider.dart';
import 'widget/app_body.dart';
import 'widget/app_drawer.dart';
import '../widget/nav_bar/navBarDesktop.dart';
import '../widget/nav_bar/navBarMobile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    AppConfig.init(context);

    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      drawer: !Responsive.isDesktop(context) ? const AppDrawer() : null,
      body: Stack(
        children: [
          const AppBody(),
          Responsive.isDesktop(context)
            ? const NavBarDesktop()
            : const NavBarMobile()
        ],
      )
    );
  }
}
