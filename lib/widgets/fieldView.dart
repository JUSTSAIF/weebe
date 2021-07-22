import 'package:flutter/material.dart';

Widget fieldView(
    {String label = "", String content = "", double contentfontSize = 22}) {
  return Container(
      child: Column(
    children: [
      ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 14, bottom: 10),
            child: Text(
              label,
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 26),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                height: 55,
                child: Center(
                  child: Text(content,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          fontSize: contentfontSize)),
                ),
              )),
        ],
      ),
    ],
  ));
}
