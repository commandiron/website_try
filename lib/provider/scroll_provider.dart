import 'package:flutter/cupertino.dart';

import '../configs/app_size.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scrollDesktop(int index) {
    double offset = index == 1
        ? 1000 - AppSize.navBarSize!
        : index == 2
            ? 1800 - AppSize.navBarSize!
            : index == 3
                ? 2600 - AppSize.navBarSize!
                : 0;
    controller.animateTo(
      offset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollTabletMobile(int index) {
    double offset = index == 1
        ? 290
        : index == 2
            ? 360
            : index == 3
                ? 300
                : 310;
    controller.animateTo(
      offset * index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
