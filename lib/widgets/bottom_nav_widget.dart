
import 'package:flutter/material.dart';
import 'package:real_estate_ani/constants/colors.dart';

class BottomNavItem extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  const BottomNavItem({
    super.key,
    this.isSelected = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: !isSelected ? null : AppColors.orange),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: isSelected ? null : Colors.black),
        child: Icon(
          icon,
          color: AppColors.white,
        ),
      ),
    );
  }
}
