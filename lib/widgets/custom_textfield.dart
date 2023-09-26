import 'package:flutter/material.dart';
import 'package:food_ninja/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool? obscure;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final double? inputFieldHeight;

  const CustomTextField({
    Key? key,
    required this.label,
    this.keyboardType,
    this.contentPadding,
    this.obscure,
    this.inputFieldHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 168, 166, 166).withOpacity(0.2),
            blurRadius: 50,
            offset: const Offset(0, 10),
          ),
          const BoxShadow(
            color: Colors.transparent,
            offset: Offset(10, 0),
          ),
          const BoxShadow(
            color: Colors.transparent,
            offset: Offset(-10, 0),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: obscure ?? false,
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          label: Text(label),
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
              color: Color(0x0fff4f4f),
            ),
          ),
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                horizontal: 15,
                vertical: inputFieldHeight ?? 16.0,
              ),
        ),
      ),
    );
  }
}
