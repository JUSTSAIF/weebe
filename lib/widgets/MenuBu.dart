import 'package:flutter/material.dart';

Widget MenuBu(IconData ico, String content) {
  return Padding(
    padding: EdgeInsets.only(right: 20, top: 11),
    child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(
        content,
        textAlign: TextAlign.right,
        style:
            TextStyle(fontFamily: 'Cairo', color: Colors.white, fontSize: 20),
      ),
      SizedBox(
        width: 12,
      ),
      Icon(
        ico,
        color: Colors.white,
        size: 25,
      ),
    ]),
  );
}
