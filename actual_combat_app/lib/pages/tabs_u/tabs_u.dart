import 'package:actual_combat_app/pages/findpages/find_u.dart';
import 'package:actual_combat_app/pages/tabs/mall.dart';
import 'package:actual_combat_app/pages/tabs/mine.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TabsU extends StatefulWidget {
  //定义回调，需要初始化
  final ValueChanged<int> onPageChanged;

  const TabsU({Key key, this.onPageChanged});

  @override
  State<StatefulWidget> createState() {
    return _TabsUState();
  }
}

class _TabsUState extends State<TabsU> {
  final defautltColor = Color.fromRGBO(0, 0, 0, 0.60);
  final activeColor = Colors.black;
  final defautltFont = FontWeight.w200;
  final activeFont = FontWeight.w500;
  double defautltFontSize = 14.0;
  double activeFontsize = 20.0;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _bottomNavPages = List(); // 底部导航栏各个可切换页面组

  @override
  void initState() {
    super.initState();

    _bottomNavPages..add(FindU())..add(MallPage())..add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //变换页面
      body: _bottomNavPages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64.0,
          color: Color.fromRGBO(248, 248, 248, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                width: 60.0,
              ),
              Expanded(
                child: IconButton(
                  icon: Text(
                    '发现',
                    style: TextStyle(
                      fontSize: _selectedIndex != 0
                          ? defautltFontSize
                          : activeFontsize,
                      fontWeight:
                          _selectedIndex != 0 ? defautltFont : activeFont,
                      color: _selectedIndex != 0 ? defautltColor : activeColor,
                    ),
                  ),
                  onPressed: () => _onItemTapped(0),
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Text(
                    '圈子',
                    style: TextStyle(
                        fontSize: _selectedIndex != 1
                            ? defautltFontSize
                            : activeFontsize,
                        fontWeight:
                            _selectedIndex != 0 ? defautltFont : activeFont,
                        color:
                            _selectedIndex != 1 ? defautltColor : activeColor),
                  ),
                  onPressed: () => _onItemTapped(1),
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Text(
                    '我的',
                    style: TextStyle(
                        fontSize: _selectedIndex != 2
                            ? defautltFontSize
                            : activeFontsize,
                        fontWeight:
                            _selectedIndex != 0 ? defautltFont : activeFont,
                        color:
                            _selectedIndex != 2 ? defautltColor : activeColor),
                  ),
                  onPressed: () => _onItemTapped(2),
                ),
              ),
              SizedBox(
                width: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
