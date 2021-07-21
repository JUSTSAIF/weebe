import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

Widget bottomNav({int pageNum = 0}) {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  return CurvedNavigationBar(
    key: _bottomNavigationKey,
    index: pageNum,
    height: 50.0,
    items: <Widget>[
      Icon(
        Icons.home,
        color: HexColor('#EFEFEF'),
      ),
      Icon(
        Icons.local_movies_rounded,
        color: HexColor('#EFEFEF'),
      ),
      Icon(
        Icons.tv,
        color: HexColor('#EFEFEF'),
      ),
      Icon(
        Icons.person_rounded,
        color: HexColor('#EFEFEF'),
      ),
    ],
    color: HexColor('#1A1A1A'),
    buttonBackgroundColor: HexColor('#C43434'),
    backgroundColor: HexColor('#111111'),
    animationCurve: Curves.easeInOut,
    animationDuration: Duration(milliseconds: 400),
    onTap: (index) {
      if (index == 0) {
        Get.offAllNamed('/home');
        index = 0;
      } else if (index == 1) {
        Get.offAllNamed('/moviesSec');
        index = 1;
      } else if (index == 2) {
        Get.offAllNamed('/seriesSec');
        index = 2;
      } else if (index == 3) {
        Get.offAllNamed('/profile');
        index = 3;
      } else {}
    },
    letIndexChange: (index) => true,
  );
}
