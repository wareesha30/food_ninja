import 'package:flutter/material.dart';
import 'package:food_ninja/screens/onboarding_2.dart';
import 'package:food_ninja/screens/signin.dart';
import 'package:food_ninja/screens/signup_process.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Onboarding2(),
    );
  }
}
