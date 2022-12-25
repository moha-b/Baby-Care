// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:baby_care/Resources/assets_manager.dart';
import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/dimen_manager.dart';
import 'package:baby_care/Resources/routes_manager.dart';
import 'package:baby_care/Resources/strings_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:baby_care/Resources/widget_manager.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: AppMargin.m70),
                child: Image.asset(AppAssets.logo),
              ),
            ),
            SizedBox(height: AppMargin.m20),
            Expanded(
              flex: 2,
              child: Container(
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(100))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppMargin.m12,
                      ),
                      Container(
                          margin:
                              EdgeInsets.only(top: AppMargin.m20, bottom: 40),
                          child: Text(
                            AppStrings.login,
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 40),
                          )),
                      Box(text: "Email"),
                      SizedBox(
                        height: AppMargin.m14,
                      ),
                      Box(text: "Password"),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: ()=> Navigator.pushReplacementNamed(context, Routes.home),
                        child: Button(text: "Login"),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(width: 2, color: AppColors.grey)),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.google),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              AppStrings.googleLogin,
                              style: getRegularStyle(
                                  color: AppColors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextButton(onPressed: ()=> Navigator.pushNamed(context, Routes.signUp), child: Text("Don't have an Account?",style:  getRegularStyle(color: AppColors.primary,fontSize: 14),))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
