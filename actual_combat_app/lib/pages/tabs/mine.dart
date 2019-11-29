import 'package:actual_combat_app/pages/login/login.dart';
import 'package:actual_combat_app/pages/login/register.dart';
import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "我的",
      theme: ThemeData(
        primaryColor: Color.fromRGBO(252, 118, 106, 1),
      ),
      routes: {
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
      },
      home: MineInfoPage(),
    );
  }
}

class MineInfoPage extends StatefulWidget {
  MineInfoPage({Key key}) : super(key: key);

  _MineInfoPageState createState() => _MineInfoPageState();
}

class _MineInfoPageState extends State<MineInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RawMaterialButton(
          fillColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          constraints: BoxConstraints.tightFor(height: 50.0, width: 100.0),
          child: Text(
            "登录",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            print("去登录");
            Navigator.pushNamed(context, 'login');
          },
        ),
      ),
    );
  }
}
