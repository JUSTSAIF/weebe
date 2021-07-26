import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget sectionCard({String label = "", String img = "assets/sec_1.jpg"}) {
  return Padding(
      padding: EdgeInsets.all(6),
      child: Container(
          child: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              // color: Colors.black,
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  HexColor('#273C43').withOpacity(.9),
                  Colors.transparent
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15, bottom: 10),
          child: Align(
            child: Text(
              label,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            alignment: Alignment.bottomRight,
          ),
        ),
      ])));
}
