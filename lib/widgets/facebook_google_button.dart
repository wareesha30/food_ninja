import 'package:flutter/material.dart';

class FacebookGoogleButton extends StatelessWidget {
  final Icon icon;
  final String text;
  const FacebookGoogleButton(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 13,
        ),
        Text(text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )),
      ],
    );
  }
}
