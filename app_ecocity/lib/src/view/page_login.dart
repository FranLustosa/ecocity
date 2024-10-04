// ignore_for_file: prefer_const_constructors

import 'package:app_ecocity/main.dart';
import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:app_ecocity/src/ui/widgets/custom_buttons.dart';
import 'package:app_ecocity/src/ui/widgets/map.dart';
import 'package:app_ecocity/src/view/page_teste_map.dart';

import 'package:flutter/material.dart';

class CustomLogin extends StatefulWidget {
  const CustomLogin({super.key});

  @override
  State<CustomLogin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: CustomColors.secondaryColor,
            title: const Text(
              'Texto da página',
              style: TextStyle(color: CustomColors.highlightTextolor),
            )),
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Center(
              child: Image.asset(
                "assets/images/logo-ecocity.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Seu app de sustentabilidade urbana",
                style: TextStyle(color: CustomColors.highlightTextolor),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(onPressed: () {}, title: "Acessar minha conta"),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.map);
                },
                child: Text(
                  " Me cadastrar ",
                  style: TextStyle(color: CustomColors.highlightTextolor),
                )),
          ],
        ));
  }
}
