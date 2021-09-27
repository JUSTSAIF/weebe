import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/mainButton.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [HexColor('#4D5382'), HexColor('#658E9C')]),
          ),
          child: ListView(children: [
            SizedBox(
              height: 80,
            ),
            Container(
              width: 130,
              height: 130,
              decoration: new BoxDecoration(
                color: HexColor('#E7E7E7'),
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/weebe_3.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Text(
                'أهلا بـك في ويـبي, باستخدام هذا التطبيق يمكنك الاستمتاع و مشاهدة ألأنمى  بجودة عالية و بدون اي أعلانات',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(33, 20, 33, 0),
              child: mainButton(
                  content: "تسجيل دخول",
                  bgColor: HexColor('#F78B51'),
                  borderColor: Colors.transparent,
                  radiusSide: false,
                  action: () => Get.toNamed('/login')),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(33, 0, 33, 0),
              child: mainButton(
                  content: "أنشاء حساب جديد",
                  side: 'left',
                  bgColor: HexColor('#519FF7'),
                  borderColor: Colors.transparent,
                  radiusSide: false,
                  action: () => Get.offAllNamed('/register')),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Disclaimer: This app does not store any files on its server. All contents are provided by non-affiliated third parties.',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: HexColor('#3F413B'),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ])),
    );
  }
}
