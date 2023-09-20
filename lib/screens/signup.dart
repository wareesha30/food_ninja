import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(child: Image.asset('assets/images/pattern.png')),
        Positioned(
            top: 80,
            right: 100,
            left: 100,
            child: Image.asset('assets/images/logo_group.png')),
        const Positioned(
            top: 345,
            right: 50,
            left: 50,
            child: Column(
              children: [
                Text("Login To Your Account",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    )),
                SizedBox(
                  height: 190,
                ),
                Text("Or Continue With",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(
                  height: 20,
                )
              ],
            ))
      ],
    ));
  }
}
