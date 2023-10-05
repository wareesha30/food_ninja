import 'package:flutter/material.dart';
import 'package:food_ninja/screens/signin.dart';
import 'package:food_ninja/utils/colors.dart';
import 'package:food_ninja/widgets/next_button.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            Image.asset('assets/images/illustration2.png'),
            const SizedBox(
              height: 39,
            ),
            Text("Food Ninja is Where Your \n Comfort Food Lives",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: darkBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                )),
            const SizedBox(
              height: 20,
            ),
            Text("Enjoy a fast and smooth food delivery at \n your doorstep",
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
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignIn();
                }))
              },
              text: 'Next',
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05)
          ],
        ),
      ),
    );
  }
}
