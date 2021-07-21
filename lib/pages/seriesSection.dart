import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/sideMenu.dart';

class SeriesSec extends StatefulWidget {
  const SeriesSec({Key? key}) : super(key: key);

  @override
  _SeriesSecState createState() => _SeriesSecState();
}

class _SeriesSecState extends State<SeriesSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SideMenu(),
      bottomNavigationBar: bottomNav(pageNum: 2),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: HexColor('#111111')),
        child: Container(
          color: HexColor('#111111'),
        ),
      ),
    );
  }
}
