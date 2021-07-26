import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

AppBar myAppBar(_key, {bool dis = false}) {
  return AppBar(
    centerTitle: false,
    backgroundColor: HexColor('#252527'),
    elevation: 0,
    actions: [
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
