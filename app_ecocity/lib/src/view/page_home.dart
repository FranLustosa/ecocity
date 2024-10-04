// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              'Explore nossos serviços',
              style: GoogleFonts.poppins(
                color: CustomColors.highlightTextolor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                children: [
                  serviceCard('Coleta Seletiva', 'assets/images/card1.png'),
                  GestureDetector(
                    onTap: () {},
                    child: serviceCard(
                        'Agendar Coleta', 'assets/images/card1.png'),
                  ),
                  serviceCard('Descarte Correto', 'assets/images/card1.png'),
                  serviceCard('Reciclagem', 'assets/images/card1.png'),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 115,
              decoration: BoxDecoration(
                color: CustomColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/card1.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Programa Incentiva EcoCity",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget serviceCard(String title, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            const Color.fromARGB(255, 102, 102, 102).withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
