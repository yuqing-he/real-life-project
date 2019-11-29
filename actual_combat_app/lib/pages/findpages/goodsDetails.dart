import 'package:flutter/material.dart';
import '../../models/goods.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GoodsDetails extends StatelessWidget {
  final Good good;
  GoodsDetails({@required this.good});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '商品详情页',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            tooltip: '返回',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // leading: _leading(context),
          title: Text(
            '${good.title}',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(good.imageUrl),
            Container(
              padding: EdgeInsets.all(32.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${good.price}',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    '${good.title}',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  SizedBox(
                    height: 0.0,
                  ),
                ],
              ),
            )
          ],
        ),
         bottomNavigationBar:null
      ),
    );
  }
}
