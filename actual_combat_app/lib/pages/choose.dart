import 'package:actual_combat_app/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../widgets/custom_button.dart';
import 'login_pages/login_page.dart';
import 'login_pages/signup_page.dart';

class Choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true, //自动播放
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                showIndicator: false,
                overlayShadow: false,
                indicatorBgPadding: 7.0,
                images: [
                  AssetImage('assets/choose1.jpg'),
                  AssetImage('assets/choose2.jpg'),
                  AssetImage('assets/choose3.jpg'),
                  AssetImage('assets/choose4.jpg'),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.3),
                    Color.fromRGBO(0, 0, 0, 0.4)
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.all(0.0),
                children: <Widget>[
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).padding.top + 160),
                          ),
                          Center(
                            child: Text(
                              '服装app',
                              style: TextStyle(
                                  fontSize: 32.0,
                                  letterSpacing: 0.4,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 160.0,
                              right: 160.0,
                              top: 10,
                              bottom: 10,
                            ),
                            child: Container(
                              color: Colors.white,
                              height: 0.5,
                            ),
                          ),
                          Text(
                            '购买最适合自己的服装',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1.3,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 250),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CustomButton(
                            txt: '注册',
                            ontap: () {
                              // Navigator.pushReplacementNamed(context, 'register');
                              // Navigator.of(context).pushNamed("register");
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (_) {
                                return SignupPage();
                              }));
                            },
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 0.2,
                                  width: 80,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushNamed("index");
                                    },
                                    child: Text(
                                      '跳过',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 0.2,
                                  width: 80,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          CustomButton(
                            txt: '登录',
                            ontap: () {
                              // Navigator.of(context).pushNamed("login");//第一种方法
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (_) {
                                return LoginPageTwo();
                              })); //第二种方法
                            },
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
