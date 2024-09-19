// ignore_for_file: prefer_const_constructors

import 'package:app_ecocity/src/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: ColorSystem.secondaryColor,
            title: const Text(
              'Texto da página',
              style: TextStyle(color: ColorSystem.white),
            )),
        body: Column(
          children: [
            Center(
              child: Image.asset("assets/images/logo-ecocity.png"),
            ),
            Center(
              child: Text(
                "Seu app de sustentabilidade urbana",
                style: TextStyle(color: ColorSystem.textDestaqueColor),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(ColorSystem.primaryColor)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => login()));
                },
                child: Text("   Acessar minha conta  ",
                    style: TextStyle(color: ColorSystem.white))),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => login()));
                },
                child: Text(
                  "Me cadastrar",
                  style: TextStyle(color: ColorSystem.primaryColor),
                ))
          ],
        ));
  }
}
