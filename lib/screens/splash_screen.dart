import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parcel_fly/constants/assets_path.dart';
import 'package:parcel_fly/screens/intro_screen.dart';

import '../constants/app_colors.dart';
import '../constants/mq.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        Get.to(const IntroScreen());
      },
      child: Scaffold(
        backgroundColor: AppColors.bg,
        body: Center(child: Image.asset(appLogo, width: mq.width / 2.8)),
      ),
    );
  }
}
