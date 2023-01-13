import 'package:flutter/cupertino.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scrollDesktop(int index) {
    double offset = index == 1
        ? 1000
        : index == 2
            ? 800
            : index == 3
                ? 800
                : 800;
    controller.animateTo(
      offset * index,
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
