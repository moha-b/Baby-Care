// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:baby_care/Resources/routes_manager.dart';
import 'package:flutter/material.dart';

import '../../Resources/assets_manager.dart';
import '../../Resources/colors_manager.dart';
import '../../Resources/dimen_manager.dart';
import '../../Resources/strings_manager.dart';
import '../../Resources/styles_manager.dart';
import '../../Resources/widget_manager.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.registrationBackground),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            // Sign UP Text
            Expanded(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.only(
                    top: AppMargin.m70,
                  ),
                  child: Text(AppStrings.signUp,
                      style:
                          getBoldStyle(color: AppColors.white, fontSize: 40))),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(100))),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Box(text: "Email"),
                        //AppWidget.textField(label: AppStrings.email),
                        SizedBox(
                          height: AppMargin.m20,
                        ),
                        Box(text: "Password"),
                        SizedBox(
                          height: AppMargin.m20,
                        ),
                        Box(text: "Confirm Password"),
                        Align(alignment: Alignment.centerLeft,child: TextButton(onPressed: ()=> Navigator.pushNamed(context, Routes.login), child: Text("    Already have an account",style:  getRegularStyle(color: AppColors.primary,fontSize: 14),))),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(onTap: ()=>  Navigator.pushNamed(context, Routes.aboutMother),child: Button(text: "Create Account",)),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 90,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: AppColors.grey),
                                  color: AppColors.white),
                            ),
                            Text("Or Sign up With"),
                            Container(
                              width: 90,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: AppColors.grey),
                                  color: AppColors.white),
                            ),
                          ],
                        ),
                        Container(
                          width: 60,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(width: 2, color: AppColors.grey),
                              color: AppColors.white),
                          child: Image.asset(AppAssets.google),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}