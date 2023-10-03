import 'package:flutter/material.dart';
import 'package:food_ninja/utils/colors.dart';

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
    return TextFormField(
      obscureText: obscure ?? false,
      style: const TextStyle(fontSize: 20),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: label,
        alignLabelWithHint: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xFFF4F4F4),
          ),
        ),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 50,
              vertical: inputFieldHeight ?? 15.0,
            ),
      ),
    );
  }
}
