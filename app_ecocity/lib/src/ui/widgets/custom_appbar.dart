import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: CustomColors.secondaryColor,
        title: const Text(
          'Texto da página',
          style: TextStyle(color: CustomColors.highlightTextolor),
        ));
  }
}
