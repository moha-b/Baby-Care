// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:baby_care/Resources/assets_manager.dart';
import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: size.height * 0.45,
            width: size.width,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.registrationBackground),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Afternoon",
                        style: getSemiBoldStyle(
                            color: AppColors.white, fontSize: 25)),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Mohab & Saif",
                          style: getSemiBoldStyle(
                              color: AppColors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        maxRadius: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 210,
            width: 100,
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text("Baby State",style: getSemiBoldStyle(color: Colors.black,fontSize: 25),),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(1,3.5),
                            )
                          ]
                      ),
                      child: Column(),
                    ),
                    Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(1,3.5),
                          )
                        ]
                      ),
                      child: Column(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 400,
            color: Colors.red,
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text("Recent",style: getSemiBoldStyle(color: Colors.black,fontSize: 25),),
                SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        Container(
                          height: 85,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        Container(
                          height: 85,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        Container(
                          height: 85,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}