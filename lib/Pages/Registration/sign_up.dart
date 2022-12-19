// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Resources/assets_manager.dart';
import '../../Resources/colors_manager.dart';
import '../../Resources/dimen_manager.dart';
import '../../Resources/strings_manager.dart';
import '../../Resources/styles_manager.dart';
import '../../Resources/widget_manager.dart';

class SignUp extends StatefulWidget {
  final Function() onClicked;
  const SignUp({Key? key, required this.onClicked}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int flex = 1;
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
          Expanded(
            flex: flex,
            child: Container(
                margin: EdgeInsets.only(top: AppMargin.m70,),
                child: Text(
                  AppStrings.signUp,
                  style: getBoldStyle(color: AppColors.white, fontSize: 40))),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    AppWidget.textField(label: AppStrings.email,func: (){
                      setState(() {
                        flex = 2;
                      });
                      print(flex);
                    }),
                    SizedBox(
                      height: AppMargin.m20,
                    ),
                    AppWidget.textField(label: AppStrings.password),
                    SizedBox(
                      height: AppMargin.m20,
                    ),
                    AppWidget.textField(label: AppStrings.confirmPassword),
                    SizedBox(
                      height: 100,
                    ),
                    AppWidget.mainButton(
                        text: AppStrings.createAccount,
                        width: size.width,
                        marginBottom: AppMargin.m20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: AppColors.grey),
                              color: AppColors.white),
                        ),
                        Text("Or Sign up With"),
                        Container(
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: AppColors.grey),
                              color: AppColors.white),
                        ),
                      ],
                    ),
                    Container(
                      width: 60,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(width: 2, color: AppColors.grey),
                          color: AppColors.white),
                      child: Image.asset(AppAssets.google),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}