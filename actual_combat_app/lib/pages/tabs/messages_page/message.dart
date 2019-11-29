import 'package:flutter/material.dart';
import '../../../models/post.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MessagePageState();
  }
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          '消息',
          style: TextStyle(fontSize: 16.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: Text(
              '客服',
              style: TextStyle(fontSize: 14.0),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
          color: Colors.white,
          child: ListView(
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/choose2.jpg'),
                  radius: 20.0,
                ),
                title: Text(
                  '附近求助',
                  style: TextStyle(fontSize: 14.0),
                ),
                subtitle: Text(
                  '有一个问题想问你一下',
                  style: TextStyle(fontSize: 12.0),
                ),
                trailing: Text(
                  '14：37',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/choose3.jpg'),
                  radius: 20.0,
                ),
                title: Text(
                  '系统消息',
                  style: TextStyle(fontSize: 14.0),
                ),
                subtitle: Text(
                  '您有一个包裹已签收',
                  style: TextStyle(fontSize: 12.0),
                ),
                trailing: Text(
                  '14：37',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ),
              ListTile(
                title: Text('Camel'),
              ),
              ListTile(
                title: Text('Sheep'),
              ),
              ListTile(
                title: Text('Goat'),
              ),
            ]).toList(),
          )),
    );
  }

  //方法一（渲染）
  // var list = ['a', 'b', 'c'];

  // getList() {
  //   Iterable<Widget> listTitles = list.map((String item) {
  //     return Container(
  //       color: Colors.white,
  //       child: ListTile(
  //         isThreeLine: true,
  //         dense: false,
  //         leading: CircleAvatar(
  //           backgroundImage: AssetImage('assets/choose2.jpg'),
  //           radius: 20.0,
  //         ),
  //         title: Text('item 的标题'),
  //         subtitle: Text('item 的内容'),
  //         trailing: Text('14：37'),
  //       ),
  //     );
  //   });
  //   return listTitles.toList();
  // }

  //方法二（渲染）

//   Widget _listItemBuilder(BuildContext context, int index) {
//     return Container(
//         color: Colors.white,
//         margin: EdgeInsets.only(top: 8.0),
//         padding: EdgeInsets.only(left: 16.0, right: 16.0),
//         child: Stack(
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 CircleAvatar(
//                   backgroundImage: AssetImage('assets/choose1.jpg'),
//                   radius: 24.0,
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(left: 10.0),
//                   child: Column(
//                     children: <Widget>[
//                       Text(
//                         '昵称',
//                         style: TextStyle(fontSize: 14.0),
//                       ),
//                       Text(
//                         '[验货提醒]',
//                         style: TextStyle(fontSize: 12.0),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ));
//   }
// }

// 分割线
  Widget get _listViewLine {
    return Container(
      color: Color.fromRGBO(245, 244, 249, 1),
      height: 6,
    );
  }
}
