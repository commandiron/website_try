import 'package:flutter/material.dart';

import '../../provider/drawer_provider.dart';
import 'package:provider/provider.dart';

class NavBarTabletMobile extends StatelessWidget {
  const NavBarTabletMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Container(
      width: double.infinity,
      height: 65,
      color: Colors.blue,
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
        ],
      ),
    );
  }
}
