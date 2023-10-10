import 'package:flutter/material.dart';
import 'package:food_ninja/utils/colors.dart';

class PaymentPhotoButton extends StatelessWidget {
  final Image icon;
  final double? height;
  final Function() onTap;
  const PaymentPhotoButton(
      {super.key, required this.icon, required this.onTap, this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 70,
        decoration: BoxDecoration(
            color: white, borderRadius: BorderRadius.circular(22)),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
