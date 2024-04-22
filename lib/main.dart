import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parcel_fly/constants/app_colors.dart';
import 'package:parcel_fly/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ParcelFly',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          fontFamily: "poppins",
          inputDecorationTheme: InputDecorationTheme(
              contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.border),
                  borderRadius: BorderRadius.circular(8)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.border, width: 1.5),
                  borderRadius: BorderRadius.circular(8))),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  foregroundColor: AppColors.primary, textStyle: const TextStyle(fontSize: 17)))),
      home: const SplashScreen(),
    );
  }
}
