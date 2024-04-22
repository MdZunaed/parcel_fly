import 'package:flutter/material.dart';
import 'package:parcel_fly/constants/app_colors.dart';

import '../constants/app_text_style.dart';

class TotalEarningOption extends StatelessWidget {
  final String img;
  final String text;
  final String amount;
  const TotalEarningOption({super.key, required this.img, required this.text, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(img, height: 30, fit: BoxFit.cover),
        const SizedBox(height: 5),
        Text(text, style: bodyText),
        const SizedBox(height: 5),
        Text(
          "\$$amount",
          style: bodyText.copyWith(color: AppColors.darkGreen, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
