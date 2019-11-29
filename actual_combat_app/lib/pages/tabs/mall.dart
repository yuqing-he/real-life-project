import 'package:actual_combat_app/pages/tabs/mine.dart';
import 'package:flutter/material.dart';

const APPBAR_SCROLL_OFFSET = 100;

class MallPage extends StatefulWidget {
  //定义回调，需要初始化
  final ValueChanged<int> onPageChanged;

  MallPage({Key key, this.onPageChanged}) : super(key: key);

  @override
  _MallPageState createState() => _MallPageState();

  add(MinePage minePage) {}
}

class _MallPageState extends State<MallPage> {
  final List<Tab> myTabs = <Tab>[
    // Tab( icon: Icon(Icons.search),),
    Tab(text: '精选'),
    Tab(text: '分类'),
    Tab(text: '预售'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0, //头部的阴影
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search', //说明一下按钮的作用
              onPressed: () => debugPrint('Search'),
            ),
            IconButton(
              icon: Icon(Icons.feedback),
              tooltip: 'message', //说明一下按钮的作用
              onPressed: () {
                Navigator.pushNamed(context, 'message');
              },
            ),
          ],
          bottom: TabBar(
            tabs: myTabs,
            unselectedLabelColor: Colors.black38, //未点击的图标的颜色
            indicatorColor: Colors.black54, //indicatorColor 指示器颜色
            indicatorSize: TabBarIndicatorSize.label, //指示器的长度和标签图标的长度是一样的
            indicatorWeight: 1.0,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return Center(
                child: Container(
              child: Column(
                children: <Widget>[
                  Text(tab.text),
                  Expanded(
                    child: IconButton(
                      icon: Text(
                        'Flutter实现动画卡片式Tab导航',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      tooltip: 'cardindex', //说明一下按钮的作用
                      onPressed: () {
                        Navigator.pushNamed(context, 'cardindex');
                      },
                    ),
                  ),
                  // 1.文本和字体.dart ——start
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "主页：", style: TextStyle(fontSize: 30)),
                    TextSpan(
                        text: "https://www.baidu.com",
                        style: TextStyle(color: Colors.blue, fontSize: 25))
                  ])),
                  // 1.文本和字体.dart ——end
                  RaisedButton(
                    child: Text(
                      '发送验证码',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    color: Color.fromRGBO(252, 118, 106, 1),
                    onPressed: () {
                      Navigator.pushNamed(context, 'sendcode');
                    },
                    shape: StadiumBorder(
                        side: BorderSide(
                      color: Color.fromRGBO(252, 118, 106, 1),
                    )),
                  ),
                ],
              ),
            ));
          }).toList(),
        ),
      ),
    );
  }
}
