import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage('assets/man.jpeg'), fit: BoxFit.cover),
          // ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.3),
                Color.fromRGBO(0, 0, 0, 0.4)
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            )),
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'tabsu');
                        },
                        child: Text('第一个页面'),
                        splashColor: Colors.indigo, // 设置溅墨效果的颜色
                        color: Theme.of(context).primaryColor, // 设置按钮背景颜色
                        textColor: Colors.white, // 设置文字的颜色
                        elevation: 10.0, // 设置阴影效果
                        textTheme: ButtonTextTheme.primary, // 设置按钮文字颜色
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'todo');
                        },
                        child: Text('第二个页面'),
                        splashColor: Colors.indigo, // 设置溅墨效果的颜色
                        color: Theme.of(context).primaryColor, // 设置按钮背景颜色
                        textColor: Colors.white, // 设置文字的颜色
                        elevation: 10.0, // 设置阴影效果
                        textTheme: ButtonTextTheme.primary, // 设置按钮文字颜色
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'message');
                        },
                        child: Text('聊天页面'),
                        splashColor: Colors.indigo, // 设置溅墨效果的颜色
                        color: Theme.of(context).primaryColor, // 设置按钮背景颜色
                        textColor: Colors.white, // 设置文字的颜色
                        elevation: 10.0, // 设置阴影效果
                        textTheme: ButtonTextTheme.primary, // 设置按钮文字颜色
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                       RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'roll');
                        },
                        child: Text('网络请求实战'),
                        splashColor: Colors.indigo, // 设置溅墨效果的颜色
                        color: Theme.of(context).primaryColor, // 设置按钮背景颜色
                        textColor: Colors.white, // 设置文字的颜色
                        elevation: 10.0, // 设置阴影效果
                        textTheme: ButtonTextTheme.primary, // 设置按钮文字颜色
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                       RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'mindex');
                        },
                        child: Text('vue实战项目——喵喵电影'),
                        splashColor: Colors.indigo, // 设置溅墨效果的颜色
                        color: Colors.lightBlue, // 设置按钮背景颜色
                        textColor: Colors.white, // 设置文字的颜色
                        elevation: 10.0, // 设置阴影效果
                        textTheme: ButtonTextTheme.primary, // 设置按钮文字颜色
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        '已为你推荐32个新品',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 16.0,
                            letterSpacing: 1.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
