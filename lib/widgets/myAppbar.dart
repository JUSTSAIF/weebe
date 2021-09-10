import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

AppBar myAppBar(_key,
    {bool dis = false, bool backBu = false, appBarContent = ""}) {
  return AppBar(
    centerTitle: false,
    backgroundColor: HexColor('#252527'),
    elevation: 0,
    actions: [
      backBu
          ? InkWell(
              onTap: () => Get.back(),
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Icon(Icons.arrow_back),
              ),
            )
          : SizedBox(),
      backBu
          ? Expanded(
              child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  appBarContent,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ))
          : SizedBox(),
      Center(
        child: Text(
          'ويـبي',
          style: TextStyle(
              fontSize: 16, fontFamily: 'Cairo', fontWeight: FontWeight.w800),
        ),
      ),
      Center(
        child: IconButton(
            icon: Icon(
              Icons.menu,
              color: dis ? Colors.white60 : Colors.white,
            ),
            onPressed: () => {
                  _key.currentState!.isEndDrawerOpen
                      ? _key.currentState!.openDrawer()
                      : _key.currentState!.openEndDrawer()
                }),
      ),
    ],
  );
}
