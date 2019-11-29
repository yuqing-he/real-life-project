import 'package:flutter/material.dart';

class NewsControl extends StatelessWidget {

  //接收方法的引用
  Function addNews;
  NewsControl(this.addNews);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).accentColor,
            child: Text(
              '添加资讯',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              addNews('five');
            },
          ),
        );
  }
}