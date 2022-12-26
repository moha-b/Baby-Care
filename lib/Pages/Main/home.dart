// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:baby_care/Resources/assets_manager.dart';
import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:baby_care/Resources/widget_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

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
                    image: AssetImage(AppAssets.image),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                Positioned(
                  bottom: 1,
                  child: Column(
                    children: [
                      Text("Good Afternoon",
                          style: getSemiBoldStyle(
                              color: AppColors.white, fontSize: 30)),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Nada & Mohamed",
                            style: getSemiBoldStyle(
                                color: AppColors.white, fontSize: 22),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 45,
                        child: Image.asset(AppAssets.mum,fit: BoxFit.cover,),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        maxRadius: 35,
                        child: Image.asset(AppAssets.child,fit: BoxFit.cover,),
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
                Text("Baby State",style: getMediumStyle(color: Colors.black,fontSize: 25),),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StateCard(widget: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(AppAssets.sleep),
                            Container(
                              margin: EdgeInsets.only(bottom: 20,right: 8),
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Align(alignment: Alignment.topLeft,child: Text("10 min",style: getSemiBoldStyle(color: Colors.black,fontSize: 20),),),
                        SizedBox(height: 5,),
                        Align(alignment: Alignment.topLeft,child: Text("baby is not ready for this yet",style: getRegularStyle(color: Colors.black,fontSize: 15),),),
                      ],
                    )),
                    StateCard(widget: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(AppAssets.bottle),
                            Container(
                              margin: EdgeInsets.only(bottom: 20,right: 8),
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  shape: BoxShape.circle
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Align(alignment: Alignment.topLeft,child: Text("5 min",style: getSemiBoldStyle(color: Colors.black,fontSize: 20),),),
                        SizedBox(height: 5,),
                        Align(alignment: Alignment.topLeft,child: Text("baby is not ready for this yet",style: getRegularStyle(color: Colors.black,fontSize: 15),),),
                      ],
                    )),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 400,
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text("Recent",style: getMediumStyle(color: Colors.black,fontSize: 25),),
                SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RecentCard(
                          widget: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(AppAssets.bottle,scale: 0.8,),
                                SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1 hr 15 min ago",style: getRegularStyle(color: Colors.black,fontSize: 17),),
                                    Text("eat for 10 min",style: getRegularStyle(color: Colors.black,fontSize: 13),),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 2,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Icon(Iconsax.timer_1,size: 40,),
                              ],
                            )
                          ],
                        ),background: AppColors.card1),
                      RecentCard(
                          widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(AppAssets.diaper,scale: 1.6,),
                              SizedBox(width: 10,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("1 hr 15 min ago",style: getRegularStyle(color: Colors.black,fontSize: 17),),
                                  Text("eat for 10 min",style: getRegularStyle(color: Colors.black,fontSize: 13),),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 2,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              SizedBox(width: 5,),
                              Icon(Iconsax.timer_1,size: 40,),
                            ],
                          )
                        ],
                      ),background: AppColors.card2),
                      RecentCard(
                          widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(AppAssets.sleep,scale: 1,),
                              SizedBox(width: 10,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("1 hr 15 min ago",style: getRegularStyle(color: Colors.black,fontSize: 17),),
                                  Text("eat for 10 min",style: getRegularStyle(color: Colors.black,fontSize: 13),),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 2,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              SizedBox(width: 5,),
                              Icon(Iconsax.timer_1,size: 40,),
                            ],
                          )
                        ],
                      ),background: AppColors.card3),
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