// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:baby_care/Pages/Feeding/main_page.dart';
import 'package:baby_care/Resources/styles_manager.dart';
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
                    child: Container(
                        height: 170,
                        width: 175,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.primary),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(1, 1),
                              )
                            ]),
                        child: Column()),
                  ),
                  Container(
                      height: 170,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.primary),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(1, 1),
                            )
                          ]),
                      child: Column()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 170,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.primary),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(1, 1),
                            )
                          ]),
                      child: Column()),
                  Container(
                      height: 170,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.primary),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(1, 1),
                            )
                          ]),
                      child: Column()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 170,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.primary),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(1, 1),
                            )
                          ]),
                      child: Column()),
                ],
              ),
            ],
          )),
    );
  }
}