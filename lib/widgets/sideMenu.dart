import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/MenuBu.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
            child: Container(
      color: HexColor('#111111'),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 35,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image.asset(
              'assets/testPro.gif',
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'ألاوتاكو ألالماني',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Cairo', fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          MenuBu(Icons.date_range, 'المشاهدات'),
          MenuBu(Icons.favorite, 'المفضلات'),
          MenuBu(Icons.subscriptions, 'الاشتراكات'),
          MenuBu(Icons.settings, 'الاعدادات'),
          MenuBu(Icons.download, 'التحميلات'),
          MenuBu(Icons.share, 'مشاركة التطيق'),
          MenuBu(Icons.logout_outlined, 'تسجيل خروج'),
          SizedBox(
            height: 70,
          ),
          Text(
            'v0.1 Weebe',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Cairo', fontSize: 15),
          ),
        ],
      ),
    )));
  }
}
