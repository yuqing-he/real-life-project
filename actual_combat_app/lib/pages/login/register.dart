import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

//TODO：判断两次输入密码是否一致
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  bool _isObscure = true;
  Color _eyeColor;
  List _loginMethod = [
    {
      "title": "facebook",
//      "icon": Icons.face,
      "icon": GroovinMaterialIcons.wechat,
    },
    {
      "title": "google",
//      "icon": Icons.web,
      "icon": GroovinMaterialIcons.qqchat,
    },
    {
      "title": "twitter",
//      "icon": Icons.feedback,
      "icon": GroovinMaterialIcons.gmail,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: buildBackButton(),
          elevation: 0.0,
          title: Text(
            '注册',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
        body: Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              children: <Widget>[
                SizedBox(
                  height: kToolbarHeight,
                ),
                // buildBackButton(),
                // buildTitle(),
                // buildTitleLine(),
                buildEmailTextField(),
                SizedBox(height: 20.0),
                buildPasswordTextField(context),
                SizedBox(height: 20.0),
                buildPasswordCheckTextField(context),
                buildForgetPasswordText(context),
                SizedBox(height: 60.0),
                buildLoginButton(context),
                SizedBox(height: 20.0),
                buildOtherLoginText(),
                buildOtherMethod(context),
                buildRegisterText(context),
              ],
            )));
  }

  Align buildRegisterText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('已有账号？'),
          GestureDetector(
            child: Text(
              '返回登录',
              style: TextStyle(color: Colors.blueGrey),
            ),
            onTap: () {
              //TODO 跳转到登录页面
              print('去登录');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  ButtonBar buildOtherMethod(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: _loginMethod
          .map((item) => Builder(
                builder: (context) {
                  return IconButton(
                      icon: Icon(item['icon'],
                          color: Theme.of(context).iconTheme.color),
                      onPressed: () {
                        //TODO : 第三方应用注册方法
                        Scaffold.of(context).showSnackBar(new SnackBar(
                          content: new Text("${item['title']}注册"),
                          action: new SnackBarAction(
                            label: "取消",
                            onPressed: () {},
                          ),
                        ));
                      });
                },
              ))
          .toList(),
    );
  }

  Align buildOtherLoginText() {
    return Align(
        alignment: Alignment.center,
        child: Text(
          '第三方应用注册',
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ));
  }

  Align buildLoginButton(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 44.0,
        width: 270.0,
        child: RaisedButton(
          child: Text(
            '注 册',
            // style: Theme.of(context).primaryTextTheme.headline,
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          color: Color.fromRGBO(252, 118, 106, 1),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              ///只有输入的内容符合要求通过才会到达此处
              _formKey.currentState.save();
              //TODO 执行注册方法
              print('email:$_email , assword:$_password');
            }
          },
          shape: StadiumBorder(
              side: BorderSide(
            color: Color.fromRGBO(252, 118, 106, 1),
          )),
        ),
      ),
    );
  }

  Padding buildForgetPasswordText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          child: Text(
            '忘记密码？',
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  TextFormField buildPasswordTextField(BuildContext context) {
    return TextFormField(
      onSaved: (String value) => _password = value,
      obscureText: _isObscure,
      validator: (String value) {
        if (value.isEmpty) {
          return '请输入密码';
        }
      },
      decoration: InputDecoration(
          labelText: '密 码',
          suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: _eyeColor,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                  _eyeColor = _isObscure
                      ? Colors.grey
                      : Theme.of(context).iconTheme.color;
                });
              })),
    );
  }

  //TODO 把 两个密码输入框抽成一个，传值 labelText
  TextFormField buildPasswordCheckTextField(BuildContext context) {
    return TextFormField(
      onSaved: (String value) => _password = value,
      obscureText: _isObscure,
      validator: (String value) {
        if (value.isEmpty) {
          return '请再次输入密码';
        }
      },
      decoration: InputDecoration(
          labelText: '确 认 密 码',
          suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: _eyeColor,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                  _eyeColor = _isObscure
                      ? Colors.grey
                      : Theme.of(context).iconTheme.color;
                });
              })),
    );
  }

  TextFormField buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: '账 号',
      ),
      validator: (String value) {
        var emailReg = RegExp(
            r"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
        if (!emailReg.hasMatch(value)) {
          return '请输入正确的邮箱地址';
        }
      },
      onSaved: (String value) => _email = value,
    );
  }

  // Padding buildTitleLine() {
  //   return Padding(
  //     padding: EdgeInsets.only(left: 12.0, top: 4.0),
  //     child: Align(
  //       alignment: Alignment.bottomLeft,
  //       child: Container(
  //         color: Colors.black,
  //         width: 40.0,
  //         height: 2.0,
  //       ),
  //     ),
  //   );
  // }

  // Padding buildTitle() {
  //   return Padding(
  //     padding: EdgeInsets.only(left: 12.0, top: 32.0),
  //     child: Align(
  //       alignment: Alignment.bottomLeft,
  //       child: Text(
  //         '注册',
  //         style: TextStyle(fontSize: 42.0),
  //       ),
  //     ),
  //   );
  // }

  Padding buildBackButton() {
    return Padding(
      padding: EdgeInsets.only(left: 0.0, top: 0.0),
      child: GestureDetector(
        child: Icon(
          GroovinMaterialIcons.arrow_left,
          color: Colors.white,
        ),
        onTap: () {
          print('跳转到上一页面');
          Navigator.pop(context);
        },
      ),
    );
  }
}
