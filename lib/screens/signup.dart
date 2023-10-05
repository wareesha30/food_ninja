import 'package:flutter/material.dart';
import 'package:food_ninja/screens/signin.dart';
import 'package:food_ninja/screens/signup_process.dart';
import 'package:food_ninja/utils/colors.dart';
import 'package:food_ninja/utils/textstyle.dart';
import 'package:food_ninja/widgets/custom_textfield.dart';
import 'package:food_ninja/widgets/keep_signedin_checkbox.dart';
import 'package:food_ninja/widgets/next_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: SafeArea(
        child: Scaffold(
            body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              'assets/images/pattern.png',
              fit: BoxFit.cover,
            )),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.05),
                      Image.asset('assets/images/logo_group.png',
                          width: 200, height: 200),
                      const SizedBox(
                        height: 30,
                      ),
                      Text("Sign Up For Free", style: textStyle),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        label: 'Anamwp . . |',
                        keyboardType: TextInputType.name,
                        prefixIcon: Image.asset('assets/images/Profile.png'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        label: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Image.asset('assets/images/Message.png'),
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
                        height: 15,
                      ),
                      const KeepSignedInCheckbox(
                        text: 'Keep Me Signed In',
                      ),
                      const KeepSignedInCheckbox(
                        text: 'Email Me About Special Pricing',
                      ),
                      const SizedBox(
                        height: 25,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignIn();
                          }));
                        },
                        child: Text(
                          "already have an account?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkGreen,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.02,
                      )
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
