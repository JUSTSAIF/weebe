import 'package:flutter/material.dart';

Widget homeCard(String image,
    {String name = "Nisekoi", int year = 2021, int imdb = 5}) {
  return Padding(
      padding: EdgeInsets.only(left: 10),
      child: SizedBox(
          width: 80,
          child: Column(
            children: [
              Image(
                image: NetworkImage(image),
                height: 121,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '$year',
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '$imdb',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Image(
                          image: AssetImage('assets/imdb.png'),
                          width: 22,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
              ),
            ],
          )));
}
