import 'package:flutter/material.dart';
import 'package:flutter_demo/text/bottom_bar_navigation_pattern_example.dart';

import './pages/index.dart';
import 'news/news.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light
      ),
      initialRoute: '/',//指定初始页面
      routes: {
        // '/': (context) => IndexDemo(),
        '/': (context) => BottomBarNavigationPatternExample(),
        '/news': (context) => News(),
      },
    );
  }
}
