import 'package:flutter/material.dart';

class FacebookGoogleButton extends StatelessWidget {
  final Image icon;
  final String text;
  const FacebookGoogleButton(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 57,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFF4F4F4)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
    );
  }
}
