// ignore_for_file: prefer_const_constructors, unused_import

import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:app_ecocity/src/ui/theme/custom_font_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final IconData? iconData;
  final Color? backgroundColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.iconData,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        backgroundColor: CustomColors.primaryColor,
        padding: const EdgeInsets.all(12.0),
        alignment: Alignment.center,
      ),
      child: iconData == null
          ? Text(
              title,
              style: TextStyle(color: CustomColors.white),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconData, color: Colors.black87),
                const SizedBox(width: 16.0),
                Text(title, style: TextStyle())
              ],
            ),
    );
  }
}