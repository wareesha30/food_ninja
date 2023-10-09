import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/screens/signup_process.dart';
import 'package:food_ninja/screens/upload_photo.dart';
import 'package:food_ninja/utils/colors.dart';
import 'package:food_ninja/utils/textstyle.dart';
import 'package:food_ninja/widgets/next_button.dart';
import 'package:food_ninja/widgets/payment_photo_button.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

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
                                return const SignUpProcess();
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
                              'Payment Method',
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
                            PaymentPhotoButton(
                              onTap: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const UploadPhoto();
                                }))
                              },
                              icon: Image.asset('assets/images/paypal.png'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            PaymentPhotoButton(
                              icon: Image.asset('assets/images/visa.png'),
                              onTap: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const UploadPhoto();
                                }))
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            PaymentPhotoButton(
                              icon: Image.asset('assets/images/Payoneer.png'),
                              onTap: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const UploadPhoto();
                                }))
                              },
                            ),
                            const SizedBox(
                              height: 220,
                            ),
                            Center(
                              child: NextButton(
                                  onTap: () => {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const UploadPhoto();
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
