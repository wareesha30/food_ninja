import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool? obscure;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final double? inputFieldHeight;
  final Color? outlineBorderColor;

  const CustomTextField({
    Key? key,
    required this.label,
    this.keyboardType,
    this.contentPadding,
    this.obscure,
    this.inputFieldHeight,
    this.outlineBorderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure ?? false,
      style: const TextStyle(fontSize: 20),
      decoration: InputDecoration(
        label: Text(label),
        alignLabelWithHint: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 21, 21, 170),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: outlineBorderColor ?? Colors.black,
          ),
        ),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 15,
              vertical: inputFieldHeight ?? 16.0,
            ),
      ),
    );
  }
}
