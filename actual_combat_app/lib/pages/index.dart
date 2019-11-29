import 'package:actual_combat_app/pages/tabs/home.dart';
import 'package:actual_combat_app/pages/tabs/mall.dart';
import 'package:actual_combat_app/pages/tabs/mine.dart';
import 'package:flutter/material.dart';

class IndexDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IndexDemoState();
  }
}

class _IndexDemoState extends State<IndexDemo> {
  final defaultColor = Colors.grey;
  final activeColor = Colors.black;

  var _currentIndex = 0;

  final PageController _controller = PageController(initialPage: 0);

  void _onTapHandler(index) {
    _controller.jumpToPage(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: PageView(
          controller: _controller,
          children: <Widget>[
            Home(),
            MallPage(),
            MinePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          type: BottomNavigationBarType.fixed, //当底部导航栏超4个时，需要设置类型
          // fixedColor: Colors.deepPurple, //设置图标被激活的颜色
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: defaultColor,
                ),
                activeIcon: Icon(Icons.home, color: activeColor),
                title: Text(
                  '发现',
                  style: TextStyle(
                      color: _currentIndex != 0 ? defaultColor : activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: defaultColor,
                ),
                activeIcon: Icon(Icons.shopping_cart, color: activeColor),
                title: Text(
                  '圈子',
                  style: TextStyle(
                      color: _currentIndex != 1 ? defaultColor : activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: defaultColor,
                ),
                activeIcon: Icon(Icons.person, color: activeColor),
                title: Text(
                  '我的',
                  style: TextStyle(
                      color: _currentIndex != 2 ? defaultColor : activeColor),
                )),
          ],
        ));
  }
}
