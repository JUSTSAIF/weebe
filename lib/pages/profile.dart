import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/sideMenu.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SideMenu(),
      bottomNavigationBar: bottomNav(pageNum: 3),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: HexColor('#111111')),
        child: Container(
          color: HexColor('#111111'),
          child: new Container(
            color: HexColor('#111111'),
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset(
                        'assets/testPro.gif',
                        height: 130,
                        width: 130,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'ألاوتاكو ألالماني',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
