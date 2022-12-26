// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:baby_care/Resources/assets_manager.dart';
import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SoothingSleeping extends StatelessWidget {
  const SoothingSleeping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 3, child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.lightPrimary,
            borderRadius: BorderRadius.circular(10),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("Tap to start",style: getRegularStyle(color: AppColors.primary,fontSize: 25),),
                Text("the timer",style: getRegularStyle(color: AppColors.primary,fontSize: 25),),
              ],
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Expanded(flex: 1,child: Container()),
                  Expanded(flex: 4,child: Image.asset(AppAssets.babyFace)),
                  Expanded(flex: 1,child: Text("Start",style: getRegularStyle(color: AppColors.primary,fontSize: 25),)),
                ],
              ),
            ),
          ],
        )
        )),
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 1,
          child: SizedBox(),
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
                "Add Manual Entry",
                style: getMediumStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
