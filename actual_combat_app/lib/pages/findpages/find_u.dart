import 'package:actual_combat_app/components/ProductCard.dart';
import 'package:actual_combat_app/components/ShoppingCart.dart';
import 'package:actual_combat_app/pages/tabs/mall.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FindU extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FindUState();
  }

  add(MallPage mallPage) {}
}

class _FindUState extends State<FindU> {
  final themebgColor = Color.fromRGBO(248, 248, 248, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(248, 248, 248, 1),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: themebgColor,
          centerTitle: true,
          elevation: 0.0,
          leading: Image(
            image: AssetImage('assets/icon/logo.png'),
          ),
          actions: <Widget>[
            Container(
              width: 46.0,
              height: 46.0,
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(0, 0, 0, 0.08),
                child: IconButton(
                  icon: Icon(
                    Icons.accessibility,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 46.0,
              height: 46.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(
                    Icons.accessibility,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 46.0,
              height: 46.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(
                    Icons.accessibility,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
        body: Container(
          color: themebgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildTipsBox(),
              buildGoodsCard(),
              ShoppingCart()
            ],
          ),
        ),
      ),
    );
  }

  // 提示信息 buildTipsBox
  Container buildTipsBox() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment(0, 0),
      height: 34,
      width: 250,
      decoration: new BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.08),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: Text(
        "已切换角色，按照角色体型为您智能推荐",
        style: TextStyle(fontSize: 12.0),
      ),
    );
  }

  // 商品小卡片 buildGoodsCard
  Container buildGoodsCard() {
    return Container(
      height: 400,
      child: Swiper(
        itemCount: 2,
        // autoplay: true,//自动播放
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ProductCard(),
            ],
          );
        },
        // pagination: SwiperPagination(),//轮播图的点
      ),
    );
  }
}
