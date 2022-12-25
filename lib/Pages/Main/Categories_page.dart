// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:baby_care/Pages/Feeding/main_page.dart';
import 'package:baby_care/Pages/Health/main_page.dart';
import 'package:baby_care/Pages/Soothing/main_page.dart';
import 'package:baby_care/Resources/assets_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:baby_care/Resources/widget_manager.dart';
import 'package:flutter/material.dart';

import '../../Resources/colors_manager.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  final List data = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Baby Needs",
          style: getMediumStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => FeedingMain(),)),
                    child: Cat(widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.rotate(angle: 30.8,
                        child: Image.asset(AppAssets.bottle,scale: 0.6,)),
                        SizedBox(height: 5,),
                        Text("Feeding",style: getMediumStyle(color: AppColors.grey,fontSize: 25),)
                      ],
                    ))
                  ),
                  GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => SoothingMain(),)),
                    child: Cat(widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.rotate(angle: 30.8,
                        child: Image.asset(AppAssets.sleep,scale: 0.6,)),
                        SizedBox(height: 5,),
                        Text("Soothing",style: getMediumStyle(color: AppColors.grey,fontSize: 25),)
                      ],
                    ))
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => HealthMain(),)),
                      child: Cat(widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.rotate(angle: 30.8,
                              child: Image.asset(AppAssets.bottle,scale: 0.6,)),
                          SizedBox(height: 5,),
                          Text("Health",style: getMediumStyle(color: AppColors.grey,fontSize: 25),)
                        ],
                      ))
                  ),
                  GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => FeedingMain(),)),
                      child: Cat(widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.rotate(angle: 30.8,
                              child: Image.asset(AppAssets.bottle,scale: 0.6,)),
                          SizedBox(height: 5,),
                          Text("Nappy",style: getMediumStyle(color: AppColors.grey,fontSize: 25),)
                        ],
                      ))
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => FeedingMain(),)),
                      child: Cat(widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.rotate(angle: 30.8,
                              child: Image.asset(AppAssets.bottle,scale: 0.6,)),
                          SizedBox(height: 5,),
                          Text("Growth",style: getMediumStyle(color: AppColors.grey,fontSize: 25),)
                        ],
                      ))
                  ),
                ],
              ),
            ],
          )),
    );
  }
}