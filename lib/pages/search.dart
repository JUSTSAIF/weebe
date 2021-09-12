import 'package:flutter/material.dart';
import 'package:weebe/widgets/myAppbar.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/sideMenu.dart';
import 'package:weebe/widgets/animeCard.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar:
          myAppBar(_key, isSearching: true, searchController: searchController),
      endDrawer: SideMenu(),
      bottomNavigationBar: bottomNav(pageNum: 1),
      body: Container(
        child: ListView(
          children: [
            AnimeCard(),
            AnimeCard(),
            AnimeCard(),
            AnimeCard(),
            AnimeCard(),
            AnimeCard(),
            AnimeCard(),
            AnimeCard(),
            AnimeCard(),
            AnimeCard(),
            AnimeCard(),
          ],
        ),
      ),
    );
  }
}
