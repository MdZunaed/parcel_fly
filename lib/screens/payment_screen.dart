import 'package:flutter/material.dart';
import 'package:parcel_fly/constants/app_colors.dart';

import '../constants/app_text_style.dart';
import '../constants/assets_path.dart';
import '../constants/mq.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Payment Screen"),
      ),
    );
  }

  Widget appBarBg() {
    return Column(
      children: [
        Container(
          height: mq.height * 0.26,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: mq.height * 0.06),
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(color: AppColors.bg),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(radius: 28, backgroundColor: Colors.grey),
              const SizedBox(width: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Jenny Wilson", style: bodyTitle.copyWith(color: const Color(0xff21C781))),
                          Text("Delivery Man", style: bodySubText.copyWith(color: AppColors.white)),
                        ],
                      ),
                      Image.asset(bell),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        //const Spacer(),
      ],
    );
  }
}
