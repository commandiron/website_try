import 'package:flutter/cupertino.dart';

import '../configs/app_size.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  double get offset {
    return scrollController.offset;
  }


  scrollDesktop(int index) {
    print(index);
    double offset =
    index == 0
      ? 0
      : index == 1
        ? AppSize.homeSectionHeight! - AppSize.navBarSize!
        : index == 2
          ? AppSize.homeSectionHeight! + AppSize.productsSectionHeight! - AppSize.navBarSize!
          : index == 3
            ? AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! - AppSize.navBarSize!
            : index == 4
              ? AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! + AppSize.aboutSectionHeight! - AppSize.navBarSize!
              : 0;
    controller.animateTo(
      offset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
