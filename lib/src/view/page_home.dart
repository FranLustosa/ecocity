// ignore_for_file: prefer_const_constructors

import 'package:app_ecocity/main.dart';
import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:app_ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:app_ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<String> serviceNames = [
    'Coleta Seletiva',
    'Agendar \nColeta',
    'Descarte Correto',
    'Reciclagem',
  ];
  final List<String> serviceRoutes = [
    'map/',
    'agendar/',
    'descarte/',
    '/reciclagem-eficiente',
  ];
  final List<String> serviceImages = [
    'assets/images/card1.png',
    'assets/images/card2.png',
    'assets/images/card3.png',
    'assets/images/card4.png',
  ];

  @override
  Widget build(BuildContext context) {
    double halfCardWidth = (MediaQuery.of(context).size.width - 42) / 2;
    double fullCardWidth = MediaQuery.of(context).size.width - 32;
    double cardHeight = 200;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                'Explore nossos serviços',
                style: GoogleFonts.poppins(
                  color: CustomColors.highlightTextolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  for (int i = 0; i < serviceNames.length; i++)
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, serviceRoutes[i]);
                      },
                      child: Container(
                        width: halfCardWidth,
                        height: cardHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              Image.asset(
                                serviceImages[i],
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: cardHeight,
                              ),
                              Container(
                                color: Colors.black.withOpacity(0.6),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  serviceNames[i],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.transparent,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: fullCardWidth,
                      height: cardHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/card5.png",
                              fit: BoxFit.cover,
                              width: fullCardWidth,
                              height: cardHeight,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            left: 16,
                            top: 16,
                            child: Text(
                              "Programa Incentiva Ecocity",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
