import 'package:app_ecocity/src/ui/theme/colors.dart';
import 'package:app_ecocity/src/view/splashscreen.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        // ignore: deprecated_member_use
        backgroundColor: ColorSystem.primaryColor,
      ),
      home: const splashscreen(),
    );
  }
}
