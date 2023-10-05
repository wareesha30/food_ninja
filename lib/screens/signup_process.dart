import 'package:flutter/material.dart';
import 'package:food_ninja/utils/colors.dart';
import 'package:food_ninja/utils/textstyle.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: BackButton(
              color: orange,
            )),
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              'assets/images/pattern2.png',
              fit: BoxFit.cover,
            )),
            Positioned.fill(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.08,
                    ),
                    Text(
                      'Fill in your bio to get \nstarted',
                      style: bigtextStyle,
                    ),
                    const SizedBox(
                      height: 19,
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
