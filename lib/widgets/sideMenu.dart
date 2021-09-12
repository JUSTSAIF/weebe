import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/MenuBu.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 0,
        child: Container(
          color: HexColor('#111111'),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(
                  'assets/testPro.gif',
                  height: 120,
                  width: 120,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'TheNullPer',
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
              SizedBox(
                height: 100,
              ),
              Text(
                'v0.1 Weebe',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Cairo', fontSize: 15),
              ),
            ],
          ),
        ));
  }
}
