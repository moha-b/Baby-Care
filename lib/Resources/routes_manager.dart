import 'package:baby_care/Pages/About/about_mother.dart';
import 'package:baby_care/Pages/Feeding/main_page.dart';
import 'package:baby_care/Pages/Health/main_page.dart';
import 'package:baby_care/Pages/Main/main_page.dart';
import 'package:baby_care/Pages/OnBoarding/onboarding_page.dart';
import 'package:baby_care/Pages/Registration/log_in.dart';
import 'package:baby_care/Pages/Registration/sign_up.dart';
import 'package:baby_care/Pages/Soothing/main_page.dart';
import 'package:baby_care/Resources/strings_manager.dart';
import 'package:flutter/material.dart';
import '../Pages/About/about_baby.dart';
import '../Pages/Registration/sign_up.dart';
import '../Pages/Splash/splash_page.dart';


class Routes{
  static const String splash = "/";
  static const String onboarding = "onboarding";
  static const String login = "login";
  static const String signUp = "sign up";
  static const String aboutMother = "about mother";
  static const String aboutBaby = "about baby";
  static const String home = "home";
  static const String feeding = "feeding";
  static const String soothing = "soothing";
  static const String health = "health";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings){
    switch (settings.name) {
       case Routes.splash:
         return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const Login());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case Routes.aboutMother:
        return MaterialPageRoute(builder: (_) => const AboutMother());
      case Routes.aboutBaby:
        return MaterialPageRoute(builder: (_) => const AboutBaby());
       case Routes.home:
         return MaterialPageRoute(builder: (_) => const MainPage());
      case Routes.feeding:
        return MaterialPageRoute(builder: (_) => const FeedingMain());
      case Routes.soothing:
        return MaterialPageRoute(builder: (_) => const SoothingMain());
      case Routes.health:
        return MaterialPageRoute(builder: (_) => const HealthMain());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.noRouteFound),
          ),
          body:const Center(child: Text(AppStrings.noRouteFound)),
        ));
  }
}