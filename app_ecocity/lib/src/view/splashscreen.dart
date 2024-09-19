// ignore_for_file: unused_import, prefer_const_constructors

import 'package:app_ecocity/src/ui/theme/colors.dart';
import 'package:app_ecocity/src/view/login.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<splashscreen> {
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
                style: TextStyle(color: ColorSystem.white, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(ColorSystem.primaryColor)),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Text("Acessar",
                      style: TextStyle(color: ColorSystem.white)))
            ],
          ),
        )
      ]),
    );
  }
}
