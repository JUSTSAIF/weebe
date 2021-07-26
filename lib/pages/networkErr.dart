import 'package:flutter/material.dart';
import 'package:weebe/widgets/myAppbar.dart';

class NetworkErr extends StatelessWidget {
  const NetworkErr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return Scaffold(
        key: _key,
        appBar: myAppBar(_key, dis: true),
        body: WillPopScope(
            onWillPop: () async => false,
            child: Container(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/no-network.png'),
                    width: 120,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'خطأ بالاتصال',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'الرجاء التحقق من الشبكة وإعادة ألمحاولة ',
                    style: TextStyle(
                      color: Colors.white54,
                      fontFamily: 'Cairo',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ))));
  }
}
