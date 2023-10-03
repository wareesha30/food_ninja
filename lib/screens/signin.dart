import 'package:flutter/material.dart';
import 'package:food_ninja/screens/signup_process.dart';
import 'package:food_ninja/utils/colors.dart';
import 'package:food_ninja/widgets/custom_textfield.dart';
import 'package:food_ninja/widgets/keep_signedin_checkbox.dart';
import 'package:food_ninja/widgets/next_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  'assets/images/pattern.png',
                  fit: BoxFit.cover,
                )),
                Positioned.fill(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 30),
                      child: Column(
                        children: [
                          Image.asset('assets/images/logo_group.png',
                              width: 200, height: 200),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text("Sign Up For Free",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextField(
                            label: 'Anamwp . . |',
                            keyboardType: TextInputType.name,
                            prefixIcon:
                                Image.asset('assets/images/Profile.png'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextField(
                            label: 'Email',
                            keyboardType: TextInputType.emailAddress,
                            prefixIcon:
                                Image.asset('assets/images/Message.png'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextField(
                            label: 'Password',
                            keyboardType: TextInputType.visiblePassword,
                            obscure: true,
                            prefixIcon: Image.asset('assets/images/Lock.png'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const KeepSignedInCheckbox(
                            text: 'Keep Me Signed In',
                          ),
                          const KeepSignedInCheckbox(
                            text: 'Email Me About Special Pricing',
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          NextButton(
                            width: 190,
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const SignUpProcess();
                              }));
                            },
                            text: 'Create Account',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "already have an account?",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: darkGreen,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
