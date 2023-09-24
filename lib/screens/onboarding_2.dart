import 'package:flutter/material.dart';
import 'package:food_ninja/screens/onboarding_3.dart';
import 'package:food_ninja/utils/colors.dart';
import 'package:food_ninja/widgets/next_button.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Image.asset('assets/images/illustration.png'),
            const SizedBox(
              height: 39,
            ),
            Text("Find your Comfort \n Food here",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: darkBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                )),
            const SizedBox(
              height: 20,
            ),
            Text(
                "Here You Can find a chef or dish for every \n taste and color. Enjoy!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: darkBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 42,
            ),
            NextButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Onboarding3();
                }));
              },
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05)
          ],
        ),
      ),
    );
  }
}
