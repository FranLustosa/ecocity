// ignore_for_file: prefer_const_constructors

import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:app_ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRecycling extends StatefulWidget {
  const CustomRecycling({super.key});

  @override
  State<CustomRecycling> createState() => _CustomRecyclingState();
}

class _CustomRecyclingState extends State<CustomRecycling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Saiba como realizar a reciclagem",
              style: GoogleFonts.poppins(
                color: CustomColors.highlightTextolor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomColors.cards_information,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "A reciclagem é uma prática essencial para a preservação do meio ambiente e a construção de um futuro mais sustentável. Ao reciclarmos materiais como plástico, papel, vidro e metal, podemos reduzir a quantidade de resíduos enviados para aterros sanitários e poupar recursos naturais preciosos.",
                    style: TextStyle(
                        color: CustomColors.highlightTextolor, fontSize: 12)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: CustomColors.cards_information,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Passo a passo de como realizar a reciclagem:\n\n"
                    "Passo 1: Conheça os Materiais Recicláveis:\n\n"
                    "Antes de começar a reciclar, é importante conhecer os materiais que podem ser reciclados. Isso inclui plástico, papel, vidro, metal e alguns tipos específicos de resíduos eletrônicos.",
                    style: TextStyle(
                        color: CustomColors.highlightTextolor, fontSize: 12)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
