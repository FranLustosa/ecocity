// ignore_for_file: prefer_const_constructors

import 'package:app_ecocity/main.dart';
import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:app_ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:app_ecocity/src/ui/widgets/custom_buttons.dart';
import 'package:app_ecocity/src/ui/widgets/map.dart';
import 'package:app_ecocity/src/view/page_teste_map.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAccounts extends StatefulWidget {
  const CustomAccounts({super.key});

  @override
  State<CustomAccounts> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarEmpty(),
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
              height: 20,
            ),
            Center(
              child: Text("Seu app de sustentabilidade urbana",
                  style: GoogleFonts.poppins(
                    color: CustomColors.highlightTextolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  )),
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.login);
                },
                title: "Acessar minha conta"),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.register);
                },
                child: Text(
                  " Me cadastrar ",
                  style: GoogleFonts.poppins(
                    color: CustomColors.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )),
          ],
        ));
  }
}
