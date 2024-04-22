import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parcel_fly/constants/app_colors.dart';
import 'package:parcel_fly/constants/assets_path.dart';
import 'package:parcel_fly/controllers/bottom_nav_controller.dart';
import 'package:parcel_fly/screens/dashboard-screen.dart';
import 'package:parcel_fly/screens/parcel_screen.dart';
import 'package:parcel_fly/screens/payment_screen.dart';
import 'package:parcel_fly/screens/profile_screen.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    List screens = [
      const DashboardScreen(),
      const PaymentScreen(),
      const ParcelScreen(),
      const ProfileScreen(),
    ];
    return GetBuilder<BottomNavController>(builder: (controller) {
      return Scaffold(
        body: screens.elementAt(controller.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.secondary,
            showUnselectedLabels: true,
            onTap: (index) {
              controller.changeIndex(index);
            },
            items: [
              BottomNavigationBarItem(label: "Dashboard", icon: Image.asset(navDashboard)),
              BottomNavigationBarItem(label: "Payment", icon: Image.asset(navPayment)),
              BottomNavigationBarItem(label: "Parcel", icon: Image.asset(navParcel)),
              BottomNavigationBarItem(label: "Profile", icon: Image.asset(navProfile)),
            ]),
      );
    });
  }
}
