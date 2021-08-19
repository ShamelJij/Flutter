import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

class _MyAppState extends State <MyApp>{
  final _questions = const [
      {
      'questionText': 'what\'s your favorite color?', 
      'answers': ['black', 'red','Green','white'],
      },
      {
      'questionText': 'what\'s your favorite flag?', 
      'answers': ['murican', 'türkish','spänüölßß','just white'],
      },
      {
      'questionText': 'what\'s your favorite animal?', 
      'answers': ['lion', 'just any animal bro','tiger','just white'],
      },
    ];
  var _questionIndex = 0;

  void _answerQuestions() {
    
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    } else {
      print('No more questions!!!!!!');
    }
  }
  
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('This is just an app!!'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(
          answerQuestion: _answerQuestions,
          questionIndex: _questionIndex,
          questions: _questions,
        )
        : Result(),
      ),
    );
  }
}

