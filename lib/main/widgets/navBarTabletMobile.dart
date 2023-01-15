import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';
import '../../configs/app_size.dart';
import '../../configs/app_space.dart';
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
      height: AppSize.navBarSize,
      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.75),
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
          AppSpace.xExpanded!,
          NavBarLogo()
        ],
      ),
    );
  }
}
