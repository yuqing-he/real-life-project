import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  final List<String> news;
  NewCard([this.news = const []]); //接收传过来的news数据

  Widget _buildViewIrtem(context, index) {
    return Card(
      child: Column(
        children: <Widget>[Image.asset('assets/img01.png'), Text(news[index])],
      ),
    );
  }

  Widget buildNewsList() {
    Widget newsCard;
    if (news.length > 0) {
      newsCard = ListView.builder(
        itemBuilder: _buildViewIrtem,
        itemCount: news.length,
      );
    } else {
      newsCard = Center(
        child: Text('暂时没有数据'),
      );
    }
    return newsCard;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: buildNewsList());
  }
}
