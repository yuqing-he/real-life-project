import 'package:flutter/material.dart';
import 'questions.dart';

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
  int questionNum = 0;
//  Questions question = Questions(q: '今天你开心么?', a: true);
  List<Questions> questionList = [
    Questions(question: '早上需要很长时间才能起床？', answer: false),
    Questions(question: '今天你开心么？', answer: true),
    Questions(question: '我总是很焦虑？', answer: true),
  ];

  void checkAnswer() {}

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
                questionList[questionNum].question,
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
                setState(() {
                  if (questionNum < questionList.length - 1) {
                    answerTrack.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                    questionNum++;
                  }
                });
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
              setState(() {
                if (questionNum < questionList.length - 1) {
                  answerTrack.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                  questionNum++;
                }
              });
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
