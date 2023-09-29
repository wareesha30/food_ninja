import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double? width;

  const NextButton({
    super.key,
    required this.onTap,
    required this.text,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 157,
        height: 57,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff53e78b), Color(0xff14be77)],
            )),
        child: Center(
          child: Text(text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
        ),
      ),
    );
  }
}
