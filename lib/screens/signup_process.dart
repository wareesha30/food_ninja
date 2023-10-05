import 'package:flutter/material.dart';
import 'package:food_ninja/utils/colors.dart';

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
            ))
          ],
        ),
      ),
    );
  }
}
