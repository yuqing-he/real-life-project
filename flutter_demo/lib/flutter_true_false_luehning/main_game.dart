import 'package:flutter/material.dart';
import 'quiz_tools.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizTools quizTools = QuizTools();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TrueFalsePage(),
          ),
        ),
      ),
    );
  }
}

class TrueFalsePage extends StatefulWidget {
  @override
  _TrueFalsePageState createState() {
    return _TrueFalsePageState();
  }
}

class _TrueFalsePageState extends State<TrueFalsePage> {
  List<Widget> answerTrack = [];
//  List<String> questions = ['今天你开心么？', '早上需要很长时间才能起床？', '我总是很焦虑？'];
//  List<bool> answers = [true, false, false];
//  int questionNum = 0; //封装到quiz_tools
//  Questions question = Questions(q: '今天你开心么?', a: true);

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizTools.getAnswer();
    setState(() {
      if (quizTools.isFinished() == true) {
        Alert(context: context, title: '恭喜您!', desc: '已经全部完成').show();
        quizTools.reset();
        answerTrack = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          answerTrack.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          answerTrack.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizTools.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizTools.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Row(
          children: answerTrack,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: RawMaterialButton(
              onPressed: () {
                checkAnswer(true);
              },
              fillColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              constraints: BoxConstraints.tightFor(height: 38.0, width: 300.0),
              child: Text(
                '正确',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              )),
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: RawMaterialButton(
            onPressed: () {
              checkAnswer(false);
            },
            fillColor: Colors.red,
            constraints: BoxConstraints(minHeight: 38.0, minWidth: 300.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Text(
              '错误',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        )),
      ],
    );
  }
}
