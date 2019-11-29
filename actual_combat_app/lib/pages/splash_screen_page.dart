import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  //创建一个计时方法
  startTime() {
    return Timer(Duration(milliseconds: 3000), () {
      Navigator.pushReplacementNamed(context, 'onBoarding');
    });
  }
  
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/man.jpeg'), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.3),
                Color.fromRGBO(0, 0, 0, 0.4)
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            )),
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      // Text(
                      //   '10:06',
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.w200,
                      //       fontSize: 80.0,
                      //       letterSpacing: 8.0),
                      // ),
                      // Text(
                      //   '11月5日星期二',
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.w300,
                      //       fontSize: 14.0),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                      ),
                      Text(
                        'U商店',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 19.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        '服装app',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 35.0,
                            letterSpacing: 1.8),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
