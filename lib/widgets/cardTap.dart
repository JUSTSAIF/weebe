import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

Widget CardTap({String title = "", String goTo = "home"}) {
  return Card(
      elevation: 2233,
      shadowColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      color: HexColor('#EECFFF'),
      child: ListTile(
          onTap: () => Get.toNamed(goTo),
          title: Text(
            title,
            textAlign: TextAlign.end,
            style: TextStyle(fontFamily: 'Cairo', fontWeight: FontWeight.bold),
          )));
}
