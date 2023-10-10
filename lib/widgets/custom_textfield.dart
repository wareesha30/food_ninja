import 'package:flutter/material.dart';
import 'package:food_ninja/utils/colors.dart';
import 'package:food_ninja/utils/textstyle.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool? obscure;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final double? inputFieldHeight;
  final Image? prefixIcon;

  const CustomTextField({
    Key? key,
    required this.label,
    this.keyboardType,
    this.contentPadding,
    this.obscure,
    this.inputFieldHeight,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextFormField(
        obscureText: obscure ?? false,
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          fillColor: white,
          filled: true,
          prefixIcon: prefixIcon,
          hintText: label,
          hintStyle: smalltextStyle,
          border: InputBorder.none,
          alignLabelWithHint: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: blue,
            ),
          ),
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                horizontal: 30,
                vertical: inputFieldHeight ?? 15.0,
              ),
        ),
      ),
    );
  }
}
