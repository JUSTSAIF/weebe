import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
      child: Container(
        color: HexColor('#1A1A1A'),
        child: Container(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Text(
                        'One Piece',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Text(
                        'اكشن | رسوم متحركة | شونين',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                    Row(
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
                          '8.6    |    1999    |    +18',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    // starRating(value: 1)
                  ],
                )),
            Expanded(
              child: Image(
                image: AssetImage("assets/testPro.gif"),
                fit: BoxFit.contain,
                alignment: Alignment.centerRight,
                // height: 110,
                // width: 110,
              ),
            )
          ],
        )),
      ),
    );
  }
}
