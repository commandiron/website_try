import 'package:flutter/material.dart';

import '../../provider/drawer_provider.dart';
import 'package:provider/provider.dart';

import '../../widget/nav_bar_logo.dart';

class NavBarTabletMobile extends StatelessWidget {
  const NavBarTabletMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Container(
      width: double.infinity,
      height: 120,
      color: Theme.of(context).primaryColor.withOpacity(0.75),
      padding: EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 32
      ),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          Expanded(child: SizedBox(width: double.infinity)),
          NavBarLogo()
        ],
      ),
    );
  }
}
