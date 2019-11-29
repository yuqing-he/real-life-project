import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';

class IndexDemo extends StatefulWidget {
  //定义回调，需要初始化
  final ValueChanged<int> onPageChanged;

  const IndexDemo({Key key, this.onPageChanged});

  @override
  State<StatefulWidget> createState() {
    return _IndexDemoState();
  }
}

class _IndexDemoState extends State<IndexDemo> {
  final _defaultColor = Colors.black26;
  final _activeColor = Colors.black;
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: widget.onPageChanged,
        children: <Widget>[
          new FirstTab(),
          new SecondTab(),
          new ThirdTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _bottomItem('首页', Icons.home, 0, 'assets/tabs/home-nomal.png',
              'assets/tabs/home-active.png'),
          _bottomItem('商城', Icons.class_, 1, 'assets/tabs/course-nomal.png',
              'assets/tabs/course-active.png'),
          _bottomItem('我的', Icons.account_circle, 2,
              'assets/tabs/mine-nomal.png', 'assets/tabs/mine-active.png')
        ],
      ),
    );
  }

  //封装底部Tab
  _bottomItem(String title, IconData icon, int index, String nomalUrl,
      String activeUrl) {
    
    return BottomNavigationBarItem(
        icon: new Image.asset(nomalUrl),
        activeIcon: new Image.asset(activeUrl),
        title: Text(
          title,
          style: TextStyle(
              color: _currentIndex != index ? _defaultColor : _activeColor,
              decoration: TextDecoration.underline,
              fontSize: 16.0),
        ));
  }
}
