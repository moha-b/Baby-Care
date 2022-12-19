// ignore_for_file: prefer_const_constructors

import 'package:baby_care/Pages/OnBoarding/onboarding_page.dart';
import 'package:baby_care/Pages/Registration/registration.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: RegistrationPage()
      ),
    );
  }
}