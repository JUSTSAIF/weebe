import 'package:flutter/material.dart';
import 'package:weebe/widgets/myAppbar.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/sectionCard.dart';
import 'package:weebe/widgets/sideMenu.dart';

class Sections extends StatefulWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: myAppBar(_key),
        endDrawer: SideMenu(),
        bottomNavigationBar: bottomNav(pageNum: 2),
        body: Container(
            child: GridView.count(
          // padding: EdgeInsets.all(5),
          childAspectRatio: (100 / 60),
          crossAxisCount: 2,
          children: [
            sectionCard(img: 'assets/sec_2.jpg', label: 'شريحه من الحياة'),
            sectionCard(img: 'assets/sec_3.jpg', label: 'رومانسي'),
            sectionCard(label: 'أكشن'),
          ],
        )));
  }
}
