import 'package:flutter/material.dart';
import 'package:food_ninja/screens/onboarding_3.dart';

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Onboarding3();
        }))
      },
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
