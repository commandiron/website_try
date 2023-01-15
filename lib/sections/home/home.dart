import 'package:demirli_tech_website/sections/home/home_desktop.dart';
import 'package:flutter/material.dart';
import '../../responsive/responsive.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeDesktop(),
      tablet: HomeDesktop(),
      desktop: HomeDesktop()
    );
  }
}