import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weebe/pages/home.dart';
import 'package:weebe/pages/search.dart';
import 'package:weebe/pages/profile.dart';
import 'package:weebe/pages/sections.dart';

class bottomNav extends StatelessWidget {
  final int? pageNum;
  bottomNav({Key? key, this.pageNum}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: pageNum!,
      height: 50.0,
      items: <Widget>[
        Icon(
          Icons.home,
          color: HexColor('#EFEFEF'),
        ),
        Icon(
          Icons.search,
          color: HexColor('#EFEFEF'),
        ),
        Icon(
          Icons.subscriptions,
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
          Navigator.pushAndRemoveUntil(
              context,
              PageTransition(type: PageTransitionType.fade, child: Home()),
              (route) => false);
          index = 0;
        } else if (index == 1) {
          Navigator.pushAndRemoveUntil(
              context,
              PageTransition(type: PageTransitionType.fade, child: Search()),
              (route) => false);
          index = 1;
        } else if (index == 2) {
          Navigator.pushAndRemoveUntil(
              context,
              PageTransition(type: PageTransitionType.fade, child: Sections()),
              (route) => false);
          index = 2;
        } else if (index == 3) {
          Navigator.pushAndRemoveUntil(
              context,
              PageTransition(type: PageTransitionType.fade, child: Profile()),
              (route) => false);
          index = 3;
        } else {
          index = 0;
        }
      },
      letIndexChange: (index) => true,
    );
  }
}
