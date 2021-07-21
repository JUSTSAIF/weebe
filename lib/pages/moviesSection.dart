import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/sideMenu.dart';

class MoviesSec extends StatefulWidget {
  const MoviesSec({Key? key}) : super(key: key);

  @override
  _MoviesSecState createState() => _MoviesSecState();
}

class _MoviesSecState extends State<MoviesSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SideMenu(),
      bottomNavigationBar: bottomNav(pageNum: 1),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: HexColor('#111111')),
        child: Container(color: HexColor('#111111')),
      ),
    );
  }
}
