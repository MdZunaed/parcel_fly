import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';

class PendingParcelCard extends StatelessWidget {
  final String img;
  final String title;
  final String subTitle;
  final String price;
  const PendingParcelCard(
      {super.key, required this.img, required this.title, required this.subTitle, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(offset: Offset(0, 0), color: Colors.black12, spreadRadius: 0, blurRadius: 10)
          ]),
      child: Row(
        children: [
          Image.asset(img, height: 40),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: bodyText.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
              Text(subTitle, style: bodySubText),
              const SizedBox(height: 3),
              Text(
                "\$$price",
                style: bodyTitle.copyWith(color: AppColors.darkGreen),
              ),
            ],
          )
        ],
      ),
    );
  }
}
