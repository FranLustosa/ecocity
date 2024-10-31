// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:app_ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:app_ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';

class CustomCorrectDisposal extends StatefulWidget {
  const CustomCorrectDisposal({super.key});

  @override
  State<CustomCorrectDisposal> createState() => _CustomCorrectDisposalState();
}

class _CustomCorrectDisposalState extends State<CustomCorrectDisposal> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Container(
        decoration: BoxDecoration(color: CustomColors.cards_information),
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Por que o descarte correto é importante?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Cor do texto
                ),
              ),
              SizedBox(height: 16.0), // Espaço entre o título e o texto
              Text(
                'O descarte inadequado de resíduos pode resultar em danos significativos ao meio ambiente, incluindo a contaminação do solo, da água e do ar.\n'
                'Materiais como plásticos, produtos químicos e eletrônicos podem persistir no ambiente por anos, causando danos irreparáveis à vida selvagem e à saúde humana.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white, // Cor do texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
