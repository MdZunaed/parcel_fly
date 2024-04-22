import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parcel_fly/constants/app_colors.dart';
import 'package:parcel_fly/constants/app_text_style.dart';
import 'package:parcel_fly/constants/assets_path.dart';
import 'package:parcel_fly/screens/bottom_nav_screen.dart';
import 'package:parcel_fly/widgets/custom_button.dart';

import '../constants/mq.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: mq.height * 0.15),
              Image.asset(appLogoDark, width: mq.width / 2.8),
              SizedBox(height: mq.height * 0.01),
              const Text("Login to your account & start delivering.", style: bodyText),
              SizedBox(height: mq.height * 0.02),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: bodyText.copyWith(color: AppColors.hintText),
                ),
              ),
              SizedBox(height: mq.height * 0.015),
              TextField(
                obscureText: isObscure,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: bodyText.copyWith(color: AppColors.hintText),
                  suffixIcon: IconButton(
                    icon: Icon(isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                    onPressed: () {
                      isObscure = !isObscure;
                      setState(() {});
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ),
              const Spacer(),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.call_outlined),
                  label: const Text("Login with phone number")),
              CustomButton(
                onTap: () {
                  Get.to(const BottomNavScreen());
                },
                text: "Login",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
