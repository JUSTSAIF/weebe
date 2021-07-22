import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget field(TextEditingController controller,
    {IconData? ico, String hintText = "", bool enabled = true}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    child: TextField(
      controller: controller,
      style: TextStyle(
        color: HexColor('#142831'),
      ),
      textAlign: TextAlign.left,
      decoration: new InputDecoration(
        fillColor: HexColor('#DADADA'),
        isDense: true,
        filled: true,
        prefixIcon: Icon(
          ico,
          size: 26,
          color: HexColor('#142831'),
        ),
        enabled: enabled,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        hintStyle: TextStyle(
          color: HexColor('#142831'),
          fontFamily: 'Cairo',
          fontWeight: FontWeight.bold,
          // height: 1
        ),
        hintText: hintText,
      ),
    ),
  );
}
