// ignore_for_file: prefer_const_constructors

import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.secondaryColor,
      title: Image.asset(
        'assets/images/logo.png',
        height: 40,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomAppBarEmpty extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.secondaryColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(10);
}
