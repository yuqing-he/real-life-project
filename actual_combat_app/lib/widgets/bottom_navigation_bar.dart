import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed, //当底部导航栏超4个时，需要设置类型
      fixedColor: Colors.black, //设置图标被激活的颜色
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore), 
          title: Text('发现')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history), 
          title: Text('圈子')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list), 
          title: Text('我的')
        ),
      ],
    );
  }
}
