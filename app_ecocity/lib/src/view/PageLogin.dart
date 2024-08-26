// --- PÁGINA QUE VISUALIZO APÓS LE O QRCODE --- //

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, deprecated_member_use

import 'package:app_ecocity/main.dart';
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
                "BARQ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                "\n Seu cardápio Digital\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                // em caso de não aceitar os termos de uso, retorna o código abaixo
                onPressed: () {
                  if (VerificarTermos()) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => MyApp()));
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Termos de uso não aceito!"),
                          content: Text(
                              "Querido(a) cliente, você deve aceitar os termos de uso para realizar seu pedido em nosso cardápio."),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Fechar",
                                style: TextStyle(
                                  color: Color(0xFF00265F),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(370, 62),
                  backgroundColor: Color(0xFF00265F),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  "Acessar Cardápio",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  if (VerificarTermos()) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => MyApp()));
                  } else {
                    // Popup de solicitar garçom
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Garçom solicitado!"),
                            content:
                                Text("Em instantes lhe atenderá, aguarde!"),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Fechar",
                                    style: TextStyle(
                                      color: Color(0xFF00265F),
                                    ),
                                  )),
                            ],
                          );
                        });
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(370, 62),
                  backgroundColor: Colors.white,
                  primary: Color(0xFF00265F),
                  onPrimary: Color(0xFF00265F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  "Solicitar Garçom",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    activeColor: Color(0xFF00265F),
                    side: BorderSide(width: 1.5, color: Colors.white),
                  ),
                  Text(
                    "Li e aceito os termos de uso",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
