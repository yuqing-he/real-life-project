import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';

class OnBoarding extends StatelessWidget {
  final List<PageViewModel> pages = [
    PageViewModel(
        pageColor: Color.fromRGBO(135, 206, 250, 1),
        iconColor: Colors.lightBlue,
        bubbleBackgroundColor: Colors.lightBlue,
        title: Text(
          '服装APP',
          style: TextStyle(fontSize: 25.0),
        ),
        body: Container(
          height: 250.0,
          child: Text(
            '服装，是衣服鞋包及装饰品等的总称，多指衣服。',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        mainImage: Image.asset(
          'assets/onboarding1.jpg',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
        pageColor: Color.fromRGBO(127, 255, 170, 1),
        iconColor: Color.fromRGBO(60, 179, 113, 1),
        bubbleBackgroundColor: Color.fromRGBO(60, 179, 113, 1),
        title: Text(
          '挑选商品',
          style: TextStyle(fontSize: 25.0),
        ),
        body: Container(
          height: 250.0,
          child: Text(
            '使用此应用程序随时随地挑选商品，简化生活',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        mainImage: Image.asset(
          'assets/onboarding2.jpg',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
        pageColor: Color(0xFFFAB4AA),
        iconColor: Colors.pink,
        bubbleBackgroundColor: Colors.pink,
        title: Text(
          '在线下单',
          style: TextStyle(fontSize: 25.0),
        ),
        body: Container(
          height: 250.0,
          child: Text(
            '在一个应用程序中\n购买世界上的千个品牌',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        mainImage: Image.asset(
          'assets/onboarding3.jpg',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.white,
      skipText: Text('跳过'),
      doneText: Text('完成'),
      onTapDoneButton: () {
        Navigator.pushReplacementNamed(context, 'choose');
      },
    );
  }
}
