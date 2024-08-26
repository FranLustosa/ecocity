// --- PÁGINA QUE VISUALIZO APÓS LE O QRCODE --- //

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, deprecated_member_use

import 'package:app_ecocity/main.dart';
import 'package:app_ecocity/src/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<PageLogin> {
  // para funcionar o checkbox
  bool isChecked = false;

  bool VerificarTermos() {
    return isChecked;
  }

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
            children: [
              Text(
                "Seu app de sustentabilidade urbana",
              ),
              SizedBox(height: 250),
              ElevatedButton(
                // em caso de não aceitar os termos de uso, retorna o código abaixo
                onPressed: () {
                  if (VerificarTermos()) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => MyApp()));
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 62),
                  backgroundColor: ColorSystem.primaryColor,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  "Acessar",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 35),
              SizedBox(height: 30),
            ],
          ),
        )
      ]),
    );
  }
}
