// ignore_for_file: prefer_const_constructors

import 'package:baby_care/Pages/OnBoarding/onboarding_page.dart';
import 'package:baby_care/Resources/assets_manager.dart';
import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/strings_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  // void initState() {
  //   Future.delayed(Duration(milliseconds: 400))
  //       .then((value) => Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingPage1(),)));
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.background),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.logo),
                Text(
                  AppStrings.appName,
                  style: getBoldStyle(fontSize: 21, color: AppColors.primary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
