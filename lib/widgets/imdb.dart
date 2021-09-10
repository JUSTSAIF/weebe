import 'package:flutter/material.dart';

Widget IMDB({double rate = 0.0}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(
        image: AssetImage('assets/imdb.png'),
        width: 30,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        rate.toString(),
        style: TextStyle(color: Colors.white),
      )
    ],
  );
}
