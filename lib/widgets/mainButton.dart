import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void gg() {}
Widget mainButton(
    {String side = "right",
    String content = "",
    IconData? ico = null,
    Color bgColor = Colors.transparent,
    Color borderColor = Colors.white,
    Color fontColor = Colors.white,
    bool radiusSide = true,
    bool circular = false,
    Function? action,
    double height = 40.0}) {
  BorderRadius borderRadiusBu = BorderRadius.zero;
  if (circular == true) {
    borderRadiusBu = BorderRadius.all(Radius.circular(80));
  } else {
    if (radiusSide == true) {
      if (side == "right") {
        borderRadiusBu = BorderRadius.only(
            topRight: Radius.circular(80.0), bottomRight: Radius.circular(0.0));
      } else if (side == "left") {
        borderRadiusBu = BorderRadius.only(
            topLeft: Radius.circular(0.0), bottomLeft: Radius.circular(80.0));
      }
    }
  }
  return Container(
    height: height,
    margin: EdgeInsets.all(10),
    child: ElevatedButton(
      onPressed: () => action == null ? () {} : action(),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(bgColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: borderRadiusBu)),
        padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
      ),
      child: Ink(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            content,
            style: TextStyle(
              color: fontColor,
              fontSize: 15,
              fontFamily: 'Cairo',
            ),
          ),
          ico != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  child: Icon(ico),
                )
              : SizedBox()
        ],
      )),
    ),
  );
}
