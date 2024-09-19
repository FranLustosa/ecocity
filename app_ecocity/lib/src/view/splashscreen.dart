// ignore_for_file: unused_import, prefer_const_constructors

import 'package:app_ecocity/src/ui/theme/colors.dart';
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
            "assets/images/capa.png",
            fit: BoxFit.fill,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Seu app de sustentabilidade urbana",
              ),
            ],
          ),
        )
      ]),
    );
  }
}
