import 'package:flutter/material.dart';
import 'package:food_ninja/screens/signin.dart';
import 'package:food_ninja/utils/colors.dart';

import 'package:food_ninja/widgets/custom_textfield.dart';
import 'package:food_ninja/widgets/facebook_google_button.dart';
import 'package:food_ninja/widgets/next_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                'assets/images/pattern.png',
                fit: BoxFit.cover,
              )),
              Positioned(
                  top: 60,
                  right: 40,
                  left: 40,
                  bottom: 21,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/logo_group.png',
                          width: 200,
                          height: 200,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text("Login To Your Account",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const CustomTextField(
                          label: 'Email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomTextField(
                          label: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          obscure: true,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text("Or Continue With",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
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
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GradientText(
                          "Forgot Your Password?",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          colors: [lightGreen, darkGreen],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        NextButton(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignIn();
                            }));
                          },
                          text: 'Login',
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
