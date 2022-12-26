// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:baby_care/Resources/assets_manager.dart';
import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';

class Growth extends StatelessWidget {
  const Growth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('Growth',style: getMediumStyle(color: Colors.black,fontSize: 20),),
        ),
        body:Column(
          children: [
            Expanded(flex: 2, child: Container()),
            Expanded(
              flex: 3,
              child: SizedBox(
                child: Column(
                  children: [
                    Image.asset(AppAssets.growth,color: Colors.grey,scale: 0.7,),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "No data Show",
                      style: getRegularStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
                  child: Text(
                    "Add Diaper",
                    style: getRegularStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
