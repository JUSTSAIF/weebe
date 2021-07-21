import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/sideMenu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color backgroundColor = HexColor('#111111');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SideMenu(),
      bottomNavigationBar: bottomNav(pageNum: 0),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: backgroundColor),
        child: Container(
          color: backgroundColor,
        ),
      ),
    );
  }
}
