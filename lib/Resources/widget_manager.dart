
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';

import 'colors_manager.dart';

class AppWidget{
  // static Widget box(){
  //   return Container();
  // }
  static Material textField({required String label,TextEditingController? controller,Function? func}){
    return Material(
      elevation: 10,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            labelText: label,
        ),
        controller: controller,
        onChanged: (value) => func,
      ),
    );
  }

  static Container mainButton({
    double? width,
    double? boarderWidth,
    required String text,
    double? marginBottom,
    double? marginTop,
    double? rounded,
    Color? color,
    Color? boarderColor,
  }){
    return Container(
      margin: EdgeInsets.only(bottom: marginBottom?? 20,top: marginTop?? 0),
      width: width ?? 100,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(rounded?? 14),
          border: Border.all(width: boarderWidth?? 0,color: boarderColor?? Colors.transparent),
          color: color?? AppColors.primary
      ),
      alignment: Alignment.center,
      child: Text(text,style: getRegularStyle(color: AppColors.white,fontSize: 25),),
    );
  }

}