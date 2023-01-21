import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';
import '../../configs/app_size.dart';
import '../../configs/app_space.dart';
import '../../provider/drawer_provider.dart';
import 'package:provider/provider.dart';

import 'nav_bar_logo.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Container(
      width: double.infinity,
      height: AppSize.navBarHeight,
      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.0),
      padding: AppPadding.navBarPadding,
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          AppSpace.horizontalExpanded!,
          const NavBarLogo()
        ],
      ),
    );
  }
}
