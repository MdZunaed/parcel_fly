import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parcel_fly/constants/app_colors.dart';
import 'package:parcel_fly/constants/app_text_style.dart';
import 'package:parcel_fly/constants/assets_path.dart';
import 'package:parcel_fly/screens/login_screen.dart';
import 'package:parcel_fly/widgets/custom_button.dart';

import '../constants/mq.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Size mq = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(deliveryBoy, width: mq.width / 1.3, height: mq.height * 0.30),
            SizedBox(height: mq.height * 0.05),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 6, backgroundColor: AppColors.primary),
                SizedBox(width: 4),
                CircleAvatar(radius: 6),
                SizedBox(width: 4),
                CircleAvatar(radius: 6),
              ],
            ),
            SizedBox(height: mq.height * 0.015),
            const Text(
              "Get started on\nOrdering your Food",
              textAlign: TextAlign.center,
              style: headlineStyle,
            ),
            SizedBox(height: mq.height * 0.015),
            const Text(
              textAlign: TextAlign.center,
              "Please create an account or sign in to your existing account to start parcel delivery.",
              style: bodyText,
            ),
            SizedBox(height: mq.height * 0.05),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      Get.to(const LoginScreen());
                    },
                    text: "Skip",
                    backgroundColor: AppColors.buttonBg,
                    foregroundColor: AppColors.primary,
                    shadowColor: Colors.transparent,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                    child: CustomButton(
                        onTap: () {
                          Get.to(const LoginScreen());
                        },
                        text: "Continue")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox indicator() {
    return SizedBox(
      height: 10,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 2),
            child: CircleAvatar(radius: 6, backgroundColor: index == 0 ? AppColors.primary : null),
          ),
        ),
      ),
    );
  }
}
