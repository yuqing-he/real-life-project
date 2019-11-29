import 'package:actual_combat_app/pages/choose.dart';
import 'package:actual_combat_app/pages/findpages/goodsDetails.dart';
import 'package:actual_combat_app/pages/index.dart';
import 'package:actual_combat_app/pages/login/login.dart';
import 'package:actual_combat_app/pages/login/register.dart';
import 'package:actual_combat_app/pages/on_boarding_page.dart';
import 'package:actual_combat_app/pages/splash_screen_page.dart';
import 'package:actual_combat_app/pages/tabs/messages_page/message.dart';
import 'package:actual_combat_app/pages/tabs/pages_Btn/send_code.dart';
import 'package:actual_combat_app/pages/tabs_u/tabs_u.dart';
import 'package:actual_combat_app/pages/twopages/task_page.dart';
import 'package:actual_combat_app/widgets/roll_widget.dart';
import 'package:flutter/material.dart';

import 'CardNavigation/card_index.dart';
import 'miaomiao/m_index.dart';
import 'pages/findpages/find_u.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '商城',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(252, 118, 106, 1),
        backgroundColor: Color.fromRGBO(248, 248, 248, 1),
        brightness: Brightness.light,
      ),
      home: SplashScreen(),
      routes: {
        'onBoarding': (BuildContext context) {
          return OnBoarding();
        },
        'choose': (BuildContext context) {
          return Choose();
        },
        'login': (BuildContext context) {
          return LoginPage();
        },
        'register': (BuildContext context) {
          return RegisterPage();
        },
        'index': (BuildContext context) {
          return IndexDemo();
        },
        'message': (BuildContext context) {
          return MessagePage();
        },
        'roll': (BuildContext context) {
          return RollWidget();
        },
        'tabsu': (BuildContext context) {
          return TabsU();
        },
        'find': (BuildContext context) {
          return FindU();
        },
        'cardindex': (BuildContext context) {
          return CardIndex();
        },
        'sendcode': (BuildContext context) {
          return SendCode();
        },
        // 商品详情页
        // 'details': (BuildContext context) {
        //   return GoodsDetails();
        // }
         'todo': (BuildContext context) {
          return TaskPage();
        },
        
        // vue项目实战——喵喵电影
         'mindex': (BuildContext context) {
          return MIndex();
        },
      },
    );
  }
}
