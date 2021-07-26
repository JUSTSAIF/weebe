import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/bindings/rootBinding.dart';
import 'package:weebe/pages/home.dart';
import 'package:weebe/pages/networkErr.dart';
import 'package:weebe/pages/search.dart';
import 'package:weebe/pages/profile.dart';
import 'package:weebe/pages/registration/login.dart';
import 'package:weebe/pages/registration/register.dart';
import 'package:weebe/pages/registration/welcome.dart';
import 'package:weebe/pages/sections.dart';
import 'dart:io';

void main() async {
  runApp(GetMaterialApp(
    initialRoute: '/home',
    initialBinding: RootBinding(),
    theme: new ThemeData(scaffoldBackgroundColor: HexColor('#111111')),
    getPages: [
      GetPage(name: '/welcome', page: () => Welcome()),
      GetPage(name: '/networkErr', page: () => NetworkErr()),
      GetPage(name: '/login', page: () => Login()),
      GetPage(name: '/register', page: () => Register()),
      GetPage(name: '/home', page: () => Home()),
      GetPage(name: '/profile', page: () => Profile()),
      GetPage(name: '/moviesSec', page: () => Search()),
      GetPage(name: '/seriesSec', page: () => Sections()),
    ],
  ));
}
