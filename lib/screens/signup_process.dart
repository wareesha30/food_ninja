import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/screens/payment_method.dart';
import 'package:food_ninja/screens/signup.dart';
import 'package:food_ninja/utils/colors.dart';
import 'package:food_ninja/utils/textstyle.dart';
import 'package:food_ninja/widgets/custom_textfield.dart';
import 'package:food_ninja/widgets/next_button.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({super.key});

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
                'assets/images/pattern2.png',
                fit: BoxFit.cover,
              )),
              Positioned.fill(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                    InkWell(
                        onTap: () => {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const SignUp();
                              }))
                            },
                        child: SvgPicture.asset('assets/images/iconback.svg')),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.03,
                            ),
                            Text(
                              'Fill in your bio to get \nstarted',
                              style: bigtextStyle,
                            ),
                            const SizedBox(
                              height: 19,
                            ),
                            Text(
                              'This data will be displayed in your account \nprofile for security',
                              style: smalltextStyle,
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            const CustomTextField(label: 'First Name'),
                            const SizedBox(
                              height: 20,
                            ),
                            const CustomTextField(label: 'Last Name'),
                            const SizedBox(
                              height: 20,
                            ),
                            const CustomTextField(label: 'Mobile Number'),
                            const SizedBox(
                              height: 220,
                            ),
                            Center(
                              child: NextButton(
                                  onTap: () => {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const PaymentMethod();
                                        }))
                                      },
                                  text: 'Next'),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
