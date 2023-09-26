import 'package:flutter/material.dart';
import 'package:food_ninja/utils/colors.dart';
import 'package:food_ninja/widgets/custom_textfield.dart';
import 'package:food_ninja/widgets/facebook_google_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
          body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/images/pattern.png',
            fit: BoxFit.cover,
          )),
          Positioned(
              top: 80,
              right: 100,
              left: 100,
              child: Image.asset('assets/images/logo_group.png')),
          Positioned(
              top: 345,
              right: 50,
              left: 50,
              child: Column(
                children: [
                  const Text("Login To Your Account",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  const CustomTextField(
                    label: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const CustomTextField(
                    label: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    obscure: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Or Continue With",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FacebookGoogleButton(
                        icon: Image.asset('assets/images/facebook.png'),
                        text: 'Facebook',
                      ),
                      FacebookGoogleButton(
                        icon: Image.asset('assets/images/google.png'),
                        text: 'Google',
                      ),
                    ],
                  )
                ],
              ))
        ],
      )),
    );
  }
}
