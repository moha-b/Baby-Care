// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Resources/colors_manager.dart';
import '../../Resources/styles_manager.dart';
import '../../Resources/widget_manager.dart';

class AboutBaby extends StatefulWidget {
  const AboutBaby({Key? key}) : super(key: key);

  @override
  State<AboutBaby> createState() => _AboutBabyState();
}

class _AboutBabyState extends State<AboutBaby> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("About Baby"),
        titleTextStyle: getRegularStyle(color: AppColors.black,fontSize: 20),
        backgroundColor: AppColors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: size.width,
        height: size.height,
        child: ListView(
          children: [
            SizedBox(
                height: 25
            ),
            AppWidget.textField(label: "Baby's Name"),
            SizedBox(
                height: 25
            ),
            AppWidget.textField(label: "Date of Birth"),
            SizedBox(
                height: 25
            ),
            AppWidget.textField(label: "Baby Gender"),
            SizedBox(
                height: 50
            ),
            AppWidget.mainButton(rounded: 7,textColor: AppColors.primary,text: "Add Another Child",color: AppColors.lightPrimary,width: size.width),
            SizedBox(
                height: size.height * 0.25
            ),
            AppWidget.mainButton(rounded: 7,text: "Continue",width: size.width),
          ],
        ),
      ),
    );
  }
}