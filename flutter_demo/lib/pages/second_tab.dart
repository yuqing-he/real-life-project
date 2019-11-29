import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  final List<Tab> myTabs = <Tab>[
    // Tab( icon: Icon(Icons.search),),
    Tab(text: '精选'),
    Tab(text: '分类'),
    Tab(text: '预售'),
  ];

  @override
  Widget build(BuildContext context) {
    const double _kTabHeight = 46.0; // 调整没效果，原值为46.0
    const double _kTextAndIconTabHeight = 53.0; // 整个tab bar的高度，原值为72.0
    return DefaultTabController(
      
      length: myTabs.length,
      child: Scaffold(
        
        appBar: AppBar(
          
          elevation: 0.0,
          bottom: TabBar(
            tabs: myTabs,
            isScrollable: true,
            indicatorColor: Colors.black54, //indicatorColor 指示器颜色
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 16.0),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 14.0),
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return Center(child: Text(tab.text));
          }).toList(),
        ),
      ),
    );
  }
}
