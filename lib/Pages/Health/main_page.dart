// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:baby_care/Pages/Feeding/bottle_page.dart';
import 'package:baby_care/Pages/Feeding/solid_page.dart';
import 'package:baby_care/Pages/Feeding/summary.dart';
import 'package:baby_care/Pages/Health/temperature_page.dart';
import 'package:baby_care/Pages/Health/vaccination_page.dart';
import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';

import 'medication_page.dart';

class HealthMain extends StatefulWidget {
  const HealthMain({Key? key}) : super(key: key);

  @override
  State<HealthMain> createState() => _HealthMainState();
}

class _HealthMainState extends State<HealthMain>{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('Health',style: getMediumStyle(color: Colors.black,fontSize: 20),),
          bottom: TabBar(
            labelColor: AppColors.primary,
            indicatorColor: AppColors.primary,
            unselectedLabelColor: AppColors.grey,
            tabs:[
              Tab(
                text: "TEMPERATURE",
              ),
              Tab(
                text: "MEDICATION",
              ),
              Tab(
                text: "VACCINATION",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children:[
            HealthTemperature(),
            HealthMedication(),
            HealthVaccination(),
          ],
        ),
      ),
    );
  }
}
