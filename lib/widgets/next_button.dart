import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Function() onTap;
  const NextButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 157,
        height: 57,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff53e78b), Color(0xff14be77)],
            )),
        child: const Center(
          child: Text("Next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
        ),
      ),
    );
  }
}
