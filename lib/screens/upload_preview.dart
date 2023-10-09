import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/screens/upload_photo.dart';
import 'package:food_ninja/utils/textstyle.dart';
import 'package:food_ninja/widgets/next_button.dart';

class UploadPreview extends StatelessWidget {
  const UploadPreview({super.key});

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
                                return const UploadPhoto();
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
                              'Upload Your Profile \nPhoto',
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
                              height: 44,
                            ),
                            Stack(children: [
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                      'assets/images/imagepreview.png'),
                                ),
                              ),
                              Positioned(
                                top: 15,
                                left: 255,
                                child: Image.asset(
                                  'assets/images/closeicon.png',
                                  height: 31,
                                  width: 31,
                                ),
                              )
                            ]),
                            const SizedBox(
                              height: 150,
                            ),
                            Center(
                              child: NextButton(
                                  onTap: () => {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const UploadPreview();
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
