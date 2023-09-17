import 'package:flutter/material.dart';
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
            Image.asset('assets/images/illustrations.png'),
            const SizedBox(
              height: 39,
            ),
            SizedBox(
              width: 235,
              height: 70,
              child: Text("Find your Comfort Food here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: darkBlue,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 270,
              height: 70,
              child: Text(
                  "Here You Can find a chef or dish for every taste and color. Enjoy!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: darkBlue,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Next(),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.06)
          ],
        ),
      ),
    );
  }
}
