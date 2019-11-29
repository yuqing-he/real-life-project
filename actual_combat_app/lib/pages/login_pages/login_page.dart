import 'package:actual_combat_app/pages/login_pages/signup_page.dart';
import 'package:actual_combat_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/colthes/img2.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color.fromRGBO(0, 0, 0, 0),
                Color.fromRGBO(0, 0, 0, 0.3),
              ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).padding.top + 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/logo2.png'),
                            height: 70,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('服装app',
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 0.6))
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      CustomTextField(
                        labelText: '用户名',
                        password: false,
                        icon: Icons.person,
                        inputType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        labelText: '密码',
                        password: true,
                        icon: Icons.vpn_key,
                        inputType: TextInputType.text,
                      ),
                      FlatButton(
                        padding: EdgeInsets.only(top: 20),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) {
                            return SignupPage();
                          }));
                        },
                        child: Text(
                          '没有账号？去注册',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.black38, blurRadius: 15)
                            ],
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(252, 118, 106, 1),
                              Color.fromRGBO(252, 144, 166, 0.8)
                              // Color(0xff120340),
                              // Color(0xff120397)
                            ])),
                        height: 55,
                        width: 600,
                        child: Text('登录',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            )),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
