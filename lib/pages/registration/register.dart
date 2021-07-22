import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:weebe/widgets/backBu.dart';
import 'package:weebe/widgets/field.dart';
import 'package:weebe/widgets/mainButton.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name = TextEditingController();
  TextEditingController username = TextEditingController();
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
                padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
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
                          'تسجيل حساب جديد',
                          style: TextStyle(
                              color: HexColor('#142831'),
                              fontSize: 29,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      field(name,
                          ico: Icons.perm_identity_sharp, hintText: 'Name'),
                      field(username,
                          ico: Icons.alternate_email, hintText: 'Username'),
                      field(email, ico: Icons.email, hintText: 'Email'),
                      field(password, ico: Icons.vpn_key, hintText: 'Password'),
                      field(password,
                          ico: Icons.vpn_key_outlined,
                          hintText: 'Confirm password'),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: mainButton(
                            content: 'تسـجيل',
                            bgColor: HexColor('#142831'),
                            circular: true,
                            height: 50),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => Get.offAllNamed('/login'),
                            child: Text(
                              'تسجيل دخول',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            " لديك حساب ؟",
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
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
