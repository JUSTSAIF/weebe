import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/myAppbar.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/fieldView.dart';
import 'package:weebe/widgets/sideMenu.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: myAppBar(_key),
      endDrawer: SideMenu(),
      bottomNavigationBar: bottomNav(pageNum: 3),
      body: Container(
        child: new Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.edit, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.blue,
                        onPrimary: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
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
                    'TheNullPer',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Cairo', fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      color: Colors.white,
                      height: 0.4,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              fieldView(content: '@justsaif', label: 'اسم المستخدم'),
              SizedBox(
                height: 20,
              ),
              fieldView(
                  content: 'justsaif@gmail.com', label: 'ألبريد الالكتروني'),
              SizedBox(
                height: 20,
              ),
              fieldView(
                content: '2021/7/22 3:48 AM',
                label: 'تاريخ التسجيل',
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Delete Account',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: HexColor('#FF5A5A'),
                      onPrimary: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
