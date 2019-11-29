import 'package:actual_combat_app/models/goods.dart';
import 'package:actual_combat_app/pages/findpages/goodsDetails.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // String imgUrl;
  // String title;
  // String price;

  // ProductCard(this.title, this.imgUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          //设置阴影
          new BoxShadow(
            offset: Offset(-2.0, 10.0),
            color: Color.fromRGBO(0, 0, 0, 0.08),
            blurRadius: 25.0,
            spreadRadius: -9.0,
          ),
        ],
      ),
      child: ListView.builder(
        // scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: _listItemBuilder,
      ),
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(const Radius.circular(16.0)),
      child: Container(
        width: 280.0,
        height: 400.0,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: Text(
                    goods[index].title,
                    style: Theme.of(context).textTheme.title,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 220.0,
                  height: 230.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(goods[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: IconButton(
                    icon: Text(''),
                    onPressed: () {
                      print('查看详情');
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new GoodsDetails(
                                  good: goods[index],
                                )),
                      );
                    },
                  ),
                ),

                // 价格  加入购物车
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 224.0,
                      height: 56.0,
                      decoration: new BoxDecoration(
                        color: Colors.black,
                      ),
                      // 商品价格
                      child: Text(
                        goods[index].price,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            height: 2.4,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 56.0,
                      height: 56.0,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(248, 97, 109, 1),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Positioned.fill(
            //   child: Material(
            //     color: Colors.transparent,
            //     child: InkWell(
            //       //添加溅墨的效果InkWell
            //       splashColor: Colors.white.withOpacity(0.3),
            //       highlightColor: Colors.white.withOpacity(0.1),
            //       onTap: () {
            //         print('点击了图片');

            //         Navigator.push(
            //           context,
            //           new MaterialPageRoute(
            //               builder: (context) => new GoodsDetails(
            //                     good: goods[index],
            //                   )),
            //         );
            //         Navigator.pushNamed(context, 'message');
            //       },
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
