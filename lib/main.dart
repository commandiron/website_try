import 'package:demirli_tech_website/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'configs/core_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialChild();
  }
}


class MaterialChild extends StatelessWidget {
  const MaterialChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demirli Tech',
      theme: themeLight,
      darkTheme: themeDark,
      initialRoute: "/",
      routes: {
        "/": (context) => const MainScreen(),
      },
    );
  }
}

