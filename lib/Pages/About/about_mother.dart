// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:baby_care/Resources/widget_manager.dart';
import 'package:flutter/material.dart';

class AboutMother extends StatelessWidget {
  const AboutMother({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("About Mother"),
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
            AppWidget.textField(label: "Name"),
            SizedBox(
              height: 25
            ),
            AppWidget.textField(label: "Relationship"),
            SizedBox(
                height: 25
            ),
            AppWidget.textField(label: "Length Unit"),
            SizedBox(
                height: 25
            ),
            AppWidget.textField(label: "Weight Unit"),
            SizedBox(
                height: size.height * 0.3
            ),
            AppWidget.mainButton(rounded: 7,text: "Continue",width: size.width),
          ],
        ),
      ),
    );
  }
}