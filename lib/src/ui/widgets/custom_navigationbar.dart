import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:app_ecocity/main.dart'; // Importar onde as rotas estão definidas

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, Routes.help);
            break;
          case 1:
            Navigator.pushNamed(context, Routes.home);
            break;
          case 2:
            Navigator.pushNamed(context, Routes.logout);
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.help_center_outlined),
          label: 'Dúvidas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout_sharp),
          label: 'Sair',
        ),
      ],
      selectedItemColor: CustomColors.white,
      unselectedItemColor: CustomColors.white,
      backgroundColor: CustomColors.primaryColor,
    );
  }
}
