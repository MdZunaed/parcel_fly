import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? shadowColor;
  final double? height;
  final double? width;
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.backgroundColor,
      this.foregroundColor,
      this.height,
      this.width,
      this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45,
      width: width ?? MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            surfaceTintColor: Colors.transparent,
            shadowColor: shadowColor,
            backgroundColor: backgroundColor ?? AppColors.primary,
            foregroundColor: foregroundColor ?? AppColors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        onPressed: onTap,
        child: Text(text),
      ),
    );
  }
}
