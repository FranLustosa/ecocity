import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:app_ecocity/src/view/page_accounts.dart';
import 'package:app_ecocity/src/view/page_create_account.dart';
import 'package:app_ecocity/src/view/page_login.dart';
import 'package:app_ecocity/src/view/page_splashscreen.dart';
import 'package:app_ecocity/src/view/page_teste_map.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.poppinsTextTheme(),
        // ignore: deprecated_member_use
        backgroundColor: CustomColors.primaryColor,
      ),
      routes: {
        Routes.splash: (context) => CustomAccounts(),
        Routes.map: (context) => TestMap(),
        Routes.login: (context) => CustomLogin(),
        Routes.logout: (context) => CustomLogin(),
        Routes.register: (context) => CustomRegister(),
      },
      home: const CustomSplashscreen(),
    );
  }
}

class Routes {
  static String splash = "splash/";
  static String map = "map/";
  static String login = "login/";
  static String help = "duvidas/";
  static String logout = "sair/";
  static String home = "inicio/";
  static String register = "cadastro/";
}
