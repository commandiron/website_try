import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'configs/core_theme.dart';
import 'main/main_screen.dart';
import 'provider/carousel_provider.dart';
import 'provider/drawer_provider.dart';
import 'provider/scroll_provider.dart';

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ChangeNotifierProvider(create: (_) => CarouselProvider()),
      ],
      child: const MaterialChild()
    );
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
      themeMode: ThemeMode.dark,
      initialRoute: "/",
      routes: {
        "/": (context) => const MainScreen(),
      },
    );
  }
}