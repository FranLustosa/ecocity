// ignore_for_file: prefer_const_constructors

import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.secondaryColor,
      title: Text('Custom AppBar'),
      centerTitle: true,
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
