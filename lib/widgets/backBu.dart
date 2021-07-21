import 'package:flutter/material.dart';
import 'package:get/get.dart';

// This Widget use to push pages with Remove All
Widget backBu({String page = '/welcome'}) {
  return InkWell(
    onTap: () {
      Get.offAllNamed(page);
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
            child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
          ),
          Text('Back',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
        ],
      ),
    ),
  );
}
