import 'package:flutter/material.dart';
import 'package:weebe/widgets/cardTap.dart';
import 'package:weebe/widgets/myAppbar.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/sideMenu.dart';

class seasonsView extends StatefulWidget {
  const seasonsView({Key? key}) : super(key: key);
  @override
  _seasonsViewState createState() => _seasonsViewState();
}

class _seasonsViewState extends State<seasonsView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: myAppBar(_key, backBu: true),
        endDrawer: SideMenu(),
        bottomNavigationBar: bottomNav(pageNum: 1),
        body: Container(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(children: <Widget>[
                  CardTap(title: 'الجزء الاول', goTo: '/sView'),
                  CardTap(title: 'الجزء الثاني', goTo: '/sView'),
                  CardTap(title: 'الجزء الثالث', goTo: '/sView'),
                  CardTap(title: 'الجزء الرابع', goTo: '/sView')
                ]))));
  }
}
