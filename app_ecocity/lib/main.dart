import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:app_ecocity/src/view/page_login.dart';
import 'package:app_ecocity/src/view/page_splashscreen.dart';
import 'package:app_ecocity/src/view/page_teste_map.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EcoCity',
      theme: ThemeData(
        // ignore: deprecated_member_use
        backgroundColor: CustomColors.primaryColor,
      ),
      routes: {
        Routes.splash: (context) => CustomLogin(),
        Routes.map: (context) => TestMap(),
      },
      home: const splashscreen(),
    );
  }
}

class Routes {
  static String splash = "splash/";
  static String map = "map/";
}
