import 'package:flutter/material.dart';
import 'package:food_ninja/utils/colors.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
        color: orange,
      )),
    );
  }
}
