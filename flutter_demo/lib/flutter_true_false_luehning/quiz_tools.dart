import 'questions.dart';

class QuizTools {
  int _questionNum = 0;
  int index = 0;
  List<Questions> _questionList = [
    Questions(question: '三山五岳里的三山指的是：瀛洲、蓬莱和方丈？', answer: true),
    Questions(question: '中国四大名著：西游记、水浒传、红楼梦和郭德纲相声选？', answer: false),
    Questions(question: '中医四诊：望闻问切？', answer: true),
    Questions(question: '知否？知否？应是人比黄花瘦', answer: false),
    Questions(question: '四书五经里的五经是拍战狼2的男主？', answer: false),
  ];

  String getQuestion() {
    return _questionList[_questionNum].question;
  }

  int getQuestionLength() {
    return _questionList.length;
  }

  bool getAnswer() {
    return _questionList[_questionNum].answer;
  }

  ///添加了index属性来判断是否结束了答题，在满足index的自增不大于数组长度的条件下，
  ///数组脚标_questionNum自增
  void nextQuestion() {
    if (index < _questionList.length) {
      if (_questionNum < _questionList.length - 1) {
        _questionNum++;
      }
      index++;
    }
  }

  bool isFinished() {
    if (index >= _questionList.length) {
      print('已经结束全部问答题');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNum = 0;
  }
}
