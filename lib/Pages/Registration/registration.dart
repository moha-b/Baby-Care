import 'package:baby_care/Pages/Registration/log_in.dart';
import 'package:baby_care/Pages/Registration/sign_up.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return isLogin
          ? Login(onClicked: toggle)
          : SignUp(onClicked: toggle);
  }
  void toggle() => setState(() {isLogin = !isLogin;});
}
