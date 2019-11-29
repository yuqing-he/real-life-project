import 'package:flutter/material.dart';

// class RollWidget extends StatelessWidget {

// 19.可滚动widget.dart.txt
//   @override
//   Widget build(BuildContext context) {
//     const styles = TextStyle(
//         color: const Color(0xffff0000), //Colors.yellow,
//         fontSize: 20,
//         fontFamily: 'yahei',
//         decoration: TextDecoration.underline,
//         decorationStyle: TextDecorationStyle.dashed);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello world! Good job'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             tooltip: 'Open shopping cart',
//             onPressed: () {
//               // Implement navigation to shopping cart page here...
//               print('Shopping cart opened.');
//             },
//           ),
//         ],
//       ),
// //        body: Scrollbar(
// //          child: SingleChildScrollView(
// //            child: Container(
// //              height: 3000,
// //              color: Colors.red
// //            )
// //          ),
// //        )
//       body: Column(
//         children: <Widget>[
//           ListTile(title: Text("固定的表头")),
//           Container(
//             height: 600,
//             child: ListView.builder(
//                 itemCount: 50,
//                 itemExtent: 50,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Text("列表内容" + index.toString());
//                 }),
//           )
//         ],
//       )
//       // body: GridView(
//       //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       //       crossAxisCount: 4, childAspectRatio: 1),
//       //   children: <Widget>[
//       //     Text("1"),
//       //     Text("2"),
//       //     Text("3"),
//       //     Text("4"),
//       //     Text("5"),
//       //     Text("6"),
//       //     Text("7"),
//       //     Text("8"),
//       //     Text("9"),
//       //   ],
//       // ),
//     );
//   }
// }

// 2.按钮.dart.txt
//  @override
//   Widget build(BuildContext context) {
//     const styles = TextStyle(
//       color: const Color(0xffff0000),//Colors.yellow,
//       fontSize: 20,
//       fontFamily: 'yahei',
//       decoration: TextDecoration.underline,
//       decorationStyle: TextDecorationStyle.dashed
//     );
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello world! Good job'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             tooltip: 'Open shopping cart',
//             onPressed: () {
//               // Implement navigation to shopping cart page here...
//               print('Shopping cart opened.');
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: <Widget>[
//           RaisedButton(
//             child: Text("RaisedButton"),
//             onPressed: () => {
//               print("RaisedButton pressed")
//             },
//           ),
//           FlatButton(
//             child: Text("FlatButton"),
//             onPressed: () => {
//               print("FlatButton pressed")
//             },
//           ),
//           OutlineButton(
//             child: Text("OutlineButton"),
//             onPressed: () => {
//               print("OutlineButton pressed")
//             },
//           ),
//           FlatButton(
//             child: Text("FlatButton自定义"),
//             color: Colors.blue,
//             textColor: Colors.red,
//             highlightColor: Colors.yellow,
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//             onPressed: () => {
//               print("FlatButton自定义 pressed")
//             },
//           ),
//         ],
//       )
//     );
//   }
// }

// 4.下拉框.dart.txt
//  @override
//   Widget build(BuildContext context) {
//     const styles = TextStyle(
//         color: const Color(0xffff0000),//Colors.yellow,
//         fontSize: 20,
//         fontFamily: 'yahei',
//         decoration: TextDecoration.underline,
//         decorationStyle: TextDecorationStyle.dashed
//     );
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Hello world! Good job'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.shopping_cart),
//               tooltip: 'Open shopping cart',
//               onPressed: () {
//                 // Implement navigation to shopping cart page here...
//                 print('Shopping cart opened.');
//               },
//             ),
//           ],
//         ),
//       body: new Column(children: <Widget>[
//         new MyDropDownButton()
//       ],)
//     );
//   }
// }

// class MyDropDownButton extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyDropDownButton();
//   }
// }

// class _MyDropDownButton extends State<MyDropDownButton> {
//   List getCityList() {
//     List<DropdownMenuItem> cityList = new List();
//     cityList.add(DropdownMenuItem(child: new Text("上海"), value: "shanghai"));
//     cityList.add(DropdownMenuItem(child: new Text("北京"), value: "beijing"));
//     cityList.add(DropdownMenuItem(child: new Text("广州"), value: "guangzhou"));
//     cityList.add(DropdownMenuItem(child: new Text("深圳"), value: "shenzhen"));
//     return cityList;
//   }
//   var selectedCity;
//   @override
//   Widget build(BuildContext context) {
//     return new Column(
//       children: <Widget>[
//         new DropdownButton(
//             items: getCityList(),
//             hint: new Text("请选择城市"),
//             value: selectedCity,
//             onChanged: (val) {
//               setState(() {
//                 this.selectedCity = val;
//               });
//             }
//         )
//       ],
//     );
//   }
// }

// 5.单选框和复选框.dart.txt
//   @override
//   Widget build(BuildContext context) {
//     const styles = TextStyle(
//         color: const Color(0xffff0000), //Colors.yellow,
//         fontSize: 20,
//         fontFamily: 'yahei',
//         decoration: TextDecoration.underline,
//         decorationStyle: TextDecorationStyle.dashed);
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Hello world! Good job'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.shopping_cart),
//               tooltip: 'Open shopping cart',
//               onPressed: () {
//                 // Implement navigation to shopping cart page here...
//                 print('Shopping cart opened.');
//               },
//             ),
//           ],
//         ),
//         body: new Column(
//           children: <Widget>[new SwitchAndCheckboxComponent()],
//         ));
//   }
// }

// class SwitchAndCheckboxComponent extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new _SwitchAndCheckboxComponent();
//   }
// }

// class _SwitchAndCheckboxComponent extends State<SwitchAndCheckboxComponent> {
//   var _switchVal = true;
//   var _checkboxVal = true;
//   @override
//   Widget build(BuildContext context) {
//     print('_checkboxVal:' + _checkboxVal.toString());
//     // TODO: implement build
//     return new Column(
//       children: <Widget>[
//         Switch(
//           value: _switchVal,
//           onChanged: (val) {
//             setState(() {
//               this._switchVal = val;
//             });
//           },
//         ),
//         Checkbox(
//           value: _checkboxVal,
//           onChanged: (val) {
//             setState(() {
//               this._checkboxVal = val;
//             });
//           },
//         )
//       ],
//     );
//   }
// }

// 6.输入框.dart.txt
// TextEditingController _pswController = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     const styles = TextStyle(
//         color: const Color(0xffff0000),//Colors.yellow,
//         fontSize: 20,
//         fontFamily: 'yahei',
//         decoration: TextDecoration.underline,
//         decorationStyle: TextDecorationStyle.dashed
//     );
//     _pswController.addListener((){
//       print(_pswController.text);
//     });
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Hello world! Good job'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.shopping_cart),
//               tooltip: 'Open shopping cart',
//               onPressed: () {
//                 // Implement navigation to shopping cart page here...
//                 print('Shopping cart opened.');
//               },
//             ),
//           ],
//         ),
//         body: Column(
//           children: <Widget>[
//             TextField(
//               autofocus: true,
//               decoration: InputDecoration(
//                   labelText: "用户名",
//                   hintText: "请输入用户名",
//                   prefixIcon: Icon(Icons.assignment_ind)
//               ),
//               keyboardType: TextInputType.text,
//               onChanged: (val) {
//                 print(val);
//               },
//             ),
//             TextField(
//               autofocus: false,
//               decoration: InputDecoration(
//                   labelText: "密码",
//                   hintText: "请输入密码",
//                   prefixIcon: Icon(Icons.remove_red_eye)
//               ),
//               keyboardType: TextInputType.text,
//               obscureText: true,
//               controller: _pswController,
//             )
//           ],
//         )
//     );
//   }
// }

// 7.表单和输入框.dart.txt
//   GlobalKey _formKey = new GlobalKey<FormState>();
//   TextEditingController _usernameController = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     const styles = TextStyle(
//         color: const Color(0xffff0000), //Colors.yellow,
//         fontSize: 20,
//         fontFamily: 'yahei',
//         decoration: TextDecoration.underline,
//         decorationStyle: TextDecorationStyle.dashed);
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Hello world! Good job'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.shopping_cart),
//               tooltip: 'Open shopping cart',
//               onPressed: () {
//                 // Implement navigation to shopping cart page here...
//                 print('Shopping cart opened.');
//               },
//             ),
//           ],
//         ),
//         body: Column(
//           children: <Widget>[
//             Form(
//               key: _formKey,
//               autovalidate: true,
//               child: Column(
//                 children: <Widget>[
//                   TextFormField(
//                     autofocus: true,
//                     controller: _usernameController,
//                     decoration: InputDecoration(
//                         labelText: "用户名",
//                         hintText: "请输入用户名",
//                         icon: Icon(Icons.perm_contact_calendar)),
//                     validator: (val) {
//                       if (val.trim().length < 6) {
//                         return "用户名需要6位以上";
//                       }
//                       return val.trim().length > 0 ? null : "请输入用户名";
//                     },
//                   ),
//                   RaisedButton(
//                     child: Text("提交"),
//                     onPressed: () {
//                       if ((_formKey.currentState as FormState).validate()) {
//                         print("提交数据给后台");
//                         print(_usernameController.text);
//                       }
//                       ;
//                     },
//                   )
//                 ],
//               ),
//             )
//           ],
//         ));
//   }
// }

// 20.事件_指针事件.dart.txt
//   @override
//   Widget build(BuildContext context) {
//     const styles = TextStyle(
//         color: const Color(0xffff0000), //Colors.yellow,
//         fontSize: 20,
//         fontFamily: 'yahei',
//         decoration: TextDecoration.underline,
//         decorationStyle: TextDecorationStyle.dashed);
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Hello world! Good job'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.shopping_cart),
//               tooltip: 'Open shopping cart',
//               onPressed: () {
//                 // Implement navigation to shopping cart page here...
//                 print('Shopping cart opened.');
//               },
//             ),
//           ],
//         ),
//         body: Listener(
//           onPointerDown: (e) {
//             print("down");
//           },
//           onPointerUp: (e) {
//             print("up");
//           },
//           onPointerMove: (e) {
//             print("move");
//           },
//           onPointerCancel: (e) {
//             print("cancel");
//           },
//           child: Container(height: 200, width: 200, color: Colors.red),
//         ));
//   }
// }

// 21.事件_手势.dart
// @override
//   Widget build(BuildContext context) {
//     const styles = TextStyle(
//         color: const Color(0xffff0000),//Colors.yellow,
//         fontSize: 20,
//         fontFamily: 'yahei',
//         decoration: TextDecoration.underline,
//         decorationStyle: TextDecorationStyle.dashed
//     );
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Hello world! Good job'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.shopping_cart),
//               tooltip: 'Open shopping cart',
//               onPressed: () {
//                 // Implement navigation to shopping cart page here...
//                 print('Shopping cart opened.');
//               },
//             ),
//           ],
//         ),
//         body: GestureDetector(
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue
//           ),
//           onTap: () {
//             print('tap,点击');
//           },
//           onDoubleTap: () {
//             print('double tap,双击');
//           },
//           onLongPress: () {
//             print('long press，长按');
//           },
//           onHorizontalDragStart: (e) {
//             print('onHorizontalDragStart，水平滑动');
//           },
//           onScaleUpdate: (e) {
//             print("onScaleUpdate，上下滑");
//           },
//         )
//     );
//   }
// }

// 23.请求接口并且显示列表.dart.txt
import 'dart:convert';
import 'package:dio/dio.dart';

class RollWidget extends StatefulWidget {
  @override
  _RollWidgetState createState() => _RollWidgetState();
}

class _RollWidgetState extends State<RollWidget> {
  List _entries = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("网络请求实战"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
                onPressed: () async {
                  Dio dio = new Dio();
                  Response res = await dio.get(
                      "https://h5.ele.me/restapi/shopping/v2/entries?latitude=40.07895549999999&longitude=116.3493623&templates[]=main_template&templates[]=favourable_template&templates[]=svip_template&terminal=h5");
                  //  print(res.data.toString());
//              List items = json.decode(res.data.toString());
                  List items = res.data;
                  List entries = items[0]["entries"];
                  entries.forEach((f) => print(f["name"]));
                  setState(() {
                    _entries = entries;
                  });
                },
                child: Text("请求接口")),
            Container(
                height: 200,
                child: ListView(
                  children: _entries.map((item) => Text(item["name"])).toList(),
                )),
            // 21.事件_手势.dart
            GestureDetector(
              child: Container(width: 200, height: 200, color: Colors.blue),
              onTap: () {
                print('tap,点击');
              },
              onDoubleTap: () {
                print('double tap,双击');
              },
              onLongPress: () {
                print('long press，长按');
              },
              onHorizontalDragStart: (e) {
                print('onHorizontalDragStart，水平滑动');
              },
              onScaleUpdate: (e) {
                print("onScaleUpdate，上下滑");
              },
            )
          ],
        ));
  }
}

// 24.路由_页面的跳转.dart.txt
// class RollWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("第一个页面")
//       ),
//       body: Column(
//         children: <Widget>[
//           FlatButton(
//             color: Colors.blue,
//             child: Text("跳转到第二个页面"),
//             onPressed: () {
//               Navigator.push(context, new MaterialPageRoute(builder: (context) => new SecondPage()));
//             },
//           )
//         ],
//       )
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: Text("第二个页面")
//         ),
//         body: Column(
//           children: <Widget>[
//             FlatButton(
//               color: Colors.pink,
//               child: Text("返回到第一个页面"),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             )
//           ],
//         )
//     );
//   }
// }
