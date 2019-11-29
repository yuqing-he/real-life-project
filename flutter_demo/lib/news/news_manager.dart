import 'package:flutter/material.dart';
import './news_card.dart';

import './news_control.dart';

//StatefulWidget 传递参数
class NewsManager extends StatefulWidget {
  final String startingNews;
  NewsManager({this.startingNews}) {
    print('news manager的构造器');
  }

  @override
  State<StatefulWidget> createState() {
    print('news manager的createState');
    return _NewsManagerState();
  }
}

class _NewsManagerState extends State<NewsManager> {
  List<String> news = [];

  @override
  void initState() {
    if (widget.startingNews != null) {
      news.add(widget.startingNews);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(NewsManager oldWidget) {
    print('news manager的didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _addNews(String _news) {
    setState(() {
      news.add(_news);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewsControl(_addNews), NewCard(this.news)],
    );
  }
}
