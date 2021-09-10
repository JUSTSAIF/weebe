import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/backBu.dart';
import 'package:weebe/widgets/field.dart';
import 'package:weebe/widgets/mainButton.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
            // color: HexColor('#142831')
          ),
          child: ListView(
            children: [
              backBu(),
              SizedBox(
                height: 35,
              ),
              Container(
                width: 130,
                height: 130,
                decoration: new BoxDecoration(
                  color: HexColor('#E7E7E7'),
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/weebe_2.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
                child: Container(
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: HexColor('#546289'),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80)),
                    color: HexColor('#ffffff'),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                              color: HexColor('#142831'),
                              fontSize: 30,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      field(email,
                          ico: Icons.person, hintText: 'Email / Username'),
                      field(password, ico: Icons.vpn_key, hintText: 'Password'),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: mainButton(
                            action: () => Get.offAllNamed('/home'),
                            content: 'دخول',
                            bgColor: HexColor('#142831'),
                            circular: true,
                            height: 50),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => Get.offAllNamed('/register'),
                            child: Text(
                              'تسجيل',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            " ليس لديك حساب ؟",
                            style: TextStyle(
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
