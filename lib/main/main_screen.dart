import 'package:demirli_tech_website/main/widgets/app_drawer.dart';
import 'package:demirli_tech_website/responsive/responsive.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: !Responsive.isDesktop(context) ? const AppDrawer() : null,
      body: Text("Hello!"),
    );
  }
}
