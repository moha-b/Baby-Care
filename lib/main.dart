// ignore_for_file: prefer_const_constructors
import 'package:baby_care/Pages/Main/main_page.dart';
import 'package:baby_care/Pages/Splash/splash_page.dart';
import 'package:baby_care/Resources/routes_manager.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splash,
      home: MainPage()
    );
  }
}