import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ChildButton extends StatelessWidget {
  final Widget child;
  const ChildButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: AppColors.border),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
