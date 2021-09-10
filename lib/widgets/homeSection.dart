import 'package:flutter/material.dart';
import 'package:weebe/widgets/homeCard.dart';

Widget homeSection({String secTitle = "None"}) {
  ts({double fontSize = 18}) => TextStyle(
      fontFamily: 'Cairo',
      fontSize: fontSize,
      color: Colors.white,
      fontWeight: FontWeight.w600);
  return Container(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 10, left: 3, right: 9),
            child: Row(
              children: [
                Text(
                  'ألمزيد',
                  style: ts(fontSize: 13),
                ),
                Expanded(
                    child: Text(
                  secTitle,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: ts(fontSize: 17),
                )),
              ],
            )),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          child: Row(
            children: [
              homeCard(
                  "https://media.discordapp.net/attachments/869134113062400050/869173707061481472/C148F617-20A8-E3EF-48FF-61A84736C885_poster_medium_thumb.png",
                  name: 'One Piece',
                  imdb: 8.6,
                  year: 1999),
              homeCard(
                  "https://cdn.discordapp.com/attachments/869134113062400050/869173774992437258/F71A17BE-9B24-D1B8-7E99-1119DE176C96_poster_medium_thumb.png",
                  name: 'Boruto',
                  imdb: 8.5,
                  year: 2017),
              homeCard(
                  "https://cdn.discordapp.com/attachments/869134113062400050/869173812170735646/2688DA7B-3457-B7D7-F945-F0E4E3C64E83_poster_medium_thumb.png",
                  name: 'Love and Lies',
                  imdb: 7.7,
                  year: 2017),
              homeCard(
                  "https://cdn.discordapp.com/attachments/869134113062400050/869173847017005066/22F07CC7-C850-A9DD-B059-50CF12BB8EDC_poster_medium_thumb.png",
                  name: 'Nisekoi',
                  imdb: 7.9,
                  year: 2014),
            ],
          ),
        )
      ],
    ),
  );
}
