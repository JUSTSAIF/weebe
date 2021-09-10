import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/homeSection.dart';
import 'package:weebe/widgets/myAppbar.dart';
import 'package:weebe/widgets/bottomNav.dart';
import 'package:weebe/widgets/sideMenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

List favList = [
  {
    "image":
        "https://cdn.discordapp.com/attachments/869134113062400050/869134159103270932/1.jpg",
    "goTo": ""
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/869134113062400050/869134352724930570/2.jpg",
    "goTo": ""
  },
  {
    "image":
        "https://media.discordapp.net/attachments/869134113062400050/869134368730394634/3.jpg",
    "goTo": ""
  },
  {
    "image":
        "https://media.discordapp.net/attachments/869134113062400050/869134384303849522/4.jpg",
    "goTo": ""
  },
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        endDrawer: SideMenu(),
        bottomNavigationBar: bottomNav(pageNum: 0),
        appBar: myAppBar(_key),
        body: ListView(
          children: [
            // Images Slider
            Container(
              child: ImageSlideshow(
                width: double.infinity,
                height: 180,
                initialPage: 3,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                children: favList
                    .map(
                      (i) => Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            scale: 1000,
                            image: CachedNetworkImageProvider(
                              '${i["image"]}',
                            ),
                            fit: BoxFit.cover,
                          )),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                                onPressed: () => {Get.toNamed('/play')},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: HexColor('##FF4D4D'),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40))),
                                  width: 120,
                                  height: 40,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "شاهد الان",
                                        style: TextStyle(
                                            fontFamily: 'Cairo',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 27,
                                      ),
                                    ],
                                  ),
                                )),
                          )),
                    )
                    .toList(),
                autoPlayInterval: 20000,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Sections
            homeSection(secTitle: "أفضل 100 انمي"),
            homeSection(secTitle: "ألانميات المميزة"),
            homeSection(secTitle: "انميات الموسم الجديد"),
            SizedBox(
              height: 30,
            ),
          ],
        ));
  }
}
