// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Settings",style: getMediumStyle(color: Colors.black,fontSize: 20),),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text("General",style: getMediumStyle(color: AppColors.grey,fontSize: 15),),
            Expanded(
              flex: 1,
              child: ListTile(
                  leading: Icon(Iconsax.notification,color: AppColors.primary,),
                  title: Text("Notifications",style: getRegularStyle(color: Colors.black,fontSize: 18),),
                  trailing: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: AppColors.lightPrimary,
                    activeColor: AppColors.primary,
                  ),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.milk,color: AppColors.primary,),
                title: Text("Feed Notifications",style: getRegularStyle(color: Colors.black,fontSize: 18),),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: AppColors.lightPrimary,
                  activeColor: AppColors.primary,
                ),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.timer_1,color: AppColors.primary,),
                title: Text("Nappies reminder",style: getRegularStyle(color: Colors.black,fontSize: 18),),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: AppColors.lightPrimary,
                  activeColor: AppColors.primary,
                ),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.message_question,color: AppColors.primary,),
                title: Text("FAQs",style: getRegularStyle(color: Colors.black,fontSize: 18),),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.star,color: AppColors.primary,),
                title: Text("Rate us",style: getRegularStyle(color: Colors.black,fontSize: 18),),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.notification,color: AppColors.primary,),
                title: Text("Notifications",style: getRegularStyle(color: Colors.black,fontSize: 18),),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.directbox_notif,color: AppColors.primary,),
                title: Text("Contact us",style: getRegularStyle(color: Colors.black,fontSize: 18),),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.document_text,color: AppColors.primary,),
                title: Text("Terms of use",style: getRegularStyle(color: Colors.black,fontSize: 18),),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.trash,color: AppColors.primary,),
                title: Text("Clear App Cash",style: getRegularStyle(color: Colors.black,fontSize: 18),),
              ),),
            Container(
              height: 1,
              color: Colors.grey[200],
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
            Text("Units and Measurements",style: getMediumStyle(color: AppColors.grey,fontSize: 15),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.ruler,color: AppColors.primary,),
                title: Text("Length Units",style: getRegularStyle(color: Colors.black,fontSize: 18),),
                trailing: Text("cm"),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.weight,color: AppColors.primary,),
                title: Text("Weight units",style: getRegularStyle(color: Colors.black,fontSize: 18),),
                trailing: Text("kg"),
              ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(Iconsax.sun_1,color: AppColors.primary,),
                title: Text("Temperature Units",style: getRegularStyle(color: Colors.black,fontSize: 18),),
                trailing: Text("c"),
              ),),
          ],
        ),
      ),
    );
  }
}