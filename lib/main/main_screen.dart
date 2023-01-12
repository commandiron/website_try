import 'package:demirli_tech_website/main/widgets/app_drawer.dart';
import 'package:demirli_tech_website/responsive/responsive.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: !Responsive.isDesktop(context) ? const AppDrawer() : null,
      body: !Responsive.isDesktop(context) ? Text("Not Desktop!") : Text("Is Desktop!"),
    );
  }
}
