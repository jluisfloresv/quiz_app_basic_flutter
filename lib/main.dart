import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  var _questionList = [
    'Questions 1',
    'Questions 2',
    'Questions 3',
    'Questions 4',
  ];

  _nextQuestion() => setState(() {
        if (_questionIndex < _questionList.length - 1) _questionIndex++;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: [
              Question(_questionList[_questionIndex]),
              ElevatedButton(onPressed: _nextQuestion, child: Text('Check'))
            ],
          )),
    );
  }
}