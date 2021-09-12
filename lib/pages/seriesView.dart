import 'package:flutter/material.dart';
import 'package:weebe/widgets/cardTap.dart';
import 'package:weebe/widgets/myAppbar.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/sideMenu.dart';

class seriesView extends StatefulWidget {
  const seriesView({Key? key}) : super(key: key);
  @override
  _seriesViewState createState() => _seriesViewState();
}

class _seriesViewState extends State<seriesView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: myAppBar(
          _key,
          backBu: true,
        ),
        endDrawer: SideMenu(),
        bottomNavigationBar: bottomNav(pageNum: 1),
        body: Container(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return CardTap(
                        title: 'الحلقة رقم ${index + 1}', goTo: '/sesView');
                  },
                ))));
  }
}
