import 'package:flutter/material.dart';

import './news_manager.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('资讯标题'),
        ),
        body: NewsManager()
      ),
    );
  }
}
