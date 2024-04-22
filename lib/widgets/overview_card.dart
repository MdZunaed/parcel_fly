import 'package:flutter/material.dart';

import '../constants/app_text_style.dart';

class OverviewCard extends StatelessWidget {
  final Color color;
  final String title;
  final String amount;
  final String img;
  final String line;
  const OverviewCard(
      {super.key,
      required this.color,
      required this.title,
      required this.amount,
      required this.img,
      required this.line});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withOpacity(.10),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 2, color: color.withOpacity(0.50)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(img, height: 25, fit: BoxFit.cover),
                ),
                Image.asset(line, height: 25, width: 60, fit: BoxFit.contain),
              ],
            ),
            const SizedBox(height: 5),
            Text(title, style: bodyText.copyWith(fontSize: 12, fontWeight: FontWeight.w600)),
            Text(amount, style: headlineStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w800)),
          ],
        ),
      ),
    );
  }
}
