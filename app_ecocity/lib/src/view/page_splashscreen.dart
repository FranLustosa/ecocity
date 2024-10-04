// ignore_for_file: unused_import, prefer_const_constructors

import 'package:app_ecocity/main.dart';
import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:app_ecocity/src/ui/widgets/custom_buttons.dart';
import 'package:app_ecocity/src/view/page_accounts.dart';
import 'package:flutter/material.dart';

class CustomSplashscreen extends StatefulWidget {
  const CustomSplashscreen({super.key});

  @override
  State<CustomSplashscreen> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<CustomSplashscreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2), () {
        if (mounted == true) {
          Navigator.of(context).popAndPushNamed(Routes.splash);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/capa-splashscreen.png",
            fit: BoxFit.fill,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.asset("assets/images/logo-ecocity.png"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Seu app de sustentabilidade urbana",
                style: TextStyle(color: CustomColors.white, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                color: CustomColors.primaryColor,
              )
            ],
          ),
        )
      ]),
    );
  }
}
