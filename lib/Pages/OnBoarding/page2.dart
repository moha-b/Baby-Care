// ignore_for_file: prefer_const_constructors

import 'package:baby_care/Resources/assets_manager.dart';
import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/dimen_manager.dart';
import 'package:baby_care/Resources/strings_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.onboarding2),
        SizedBox(
          height: AppMargin.m20,
        ),
        Text(
          AppStrings.onboarding2Title,
          style: getRegularStyle(color: AppColors.black, fontSize: 20),
        ),
        SizedBox(
          height: AppMargin.m16,
        ),
        Text(
          AppStrings.onboarding2SubTitle,
          style: getRegularStyle(fontSize: 15, color: AppColors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
