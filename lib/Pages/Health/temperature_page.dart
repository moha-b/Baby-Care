// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../Resources/assets_manager.dart';

class HealthTemperature extends StatelessWidget {
  const HealthTemperature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 3,
          child: SizedBox(
            child: Column(
              children: [
                Image.asset(AppAssets.temperature),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "No temperature to Show",
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
                "Add Temperature",
                style: getRegularStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
