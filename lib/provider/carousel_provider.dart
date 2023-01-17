import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';

class CarouselProvider extends ChangeNotifier {
  final _carouselController = CarouselController();
  final _carouselKey = GlobalKey();

  GlobalKey get key => _carouselKey;
  CarouselController get controller => _carouselController;
}
