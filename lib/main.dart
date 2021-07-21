import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:weebe/pages/home.dart';
import 'package:weebe/pages/moviesSection.dart';
import 'package:weebe/pages/profile.dart';
import 'package:weebe/pages/registration/login.dart';
import 'package:weebe/pages/registration/register.dart';
import 'package:weebe/pages/registration/welcome.dart';
import 'package:weebe/pages/seriesSection.dart';

void main() {
  runApp(GetMaterialApp(
    home: Home(),
    getPages: [
      GetPage(name: '/welcome', page: () => Welcome()),
      GetPage(name: '/login', page: () => Login()),
      GetPage(name: '/register', page: () => Register()),
      GetPage(name: '/home', page: () => Home()),
      GetPage(name: '/profile', page: () => Profile()),
      GetPage(name: '/moviesSec', page: () => MoviesSec()),
      GetPage(name: '/seriesSec', page: () => SeriesSec()),
    ],
  ));
}
