// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';

import 'colors_manager.dart';

Widget Box({required String text}) {
  return Container(
    height: 60,
    margin: EdgeInsets.symmetric(horizontal: 16),
    padding: EdgeInsets.all(8),
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.lightGrey,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(color: AppColors.grey, blurRadius: 4, offset: Offset(1, 3)),
      ],
    ),
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      style: getRegularStyle(color: AppColors.grey, fontSize: 15),
    ),
  );
}

Widget Button({required String text, Color? background, Color? textColor}) {
  return Container(
    height: 50,
    margin: EdgeInsets.symmetric(horizontal: 16),
    padding: EdgeInsets.all(8),
    width: double.infinity,
    decoration: BoxDecoration(
      color: background ?? AppColors.primary,
      borderRadius: BorderRadius.circular(10),
    ),
    alignment: Alignment.center,
    child: Text(
      text,
      style: getRegularStyle(color: textColor ?? AppColors.white, fontSize: 20),
    ),
  );
}

Widget StateCard({required Widget widget}) {
  return Container(
    padding: EdgeInsets.only(left: 16, top: 16, bottom: 8, right: 8),
    height: 150,
    width: 170,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(1, 3.5),
          )
        ]),
    child: widget,
  );
}

Widget RecentCard({required Widget widget, Color? background}) {
  return Container(
    height: 80,
    width: double.infinity,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
        color: background ?? Colors.white,
        borderRadius: BorderRadius.circular(25)),
    child: widget,
  );
}

Widget Cat({required Widget widget}) {
  return Container(
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
      alignment: Alignment.center,
      child: widget);
}
