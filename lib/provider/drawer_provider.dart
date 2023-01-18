import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => _scaffoldKey;
}
