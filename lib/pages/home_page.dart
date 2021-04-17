import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule/models/question.dart';
import 'package:schedule/widgets/answer.dart';
import 'package:schedule/widgets/progress_bar.dart';
import 'package:schedule/widgets/quiz.dart';
import 'package:schedule/widgets/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
    _questionIndex = 0;
    _countResult = 0;
    _icons = [];
  });

  void _onChangeAnswer(bool isCorrect) => setState(() {
    if (isCorrect) {
      _icons.add(Icon(Icons.brightness_1, color: Color(0xffbd27ff)));
      _countResult++;
    } else {
      _icons.add(Icon(Icons.brightness_1, color: Color(0xff000000)));
    }
    _questionIndex += 1;
  });

  final whiteTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Тестирование')),
        body: SafeArea(
          child: DefaultTextStyle.merge(
            style: whiteTextStyle,
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: const Color(0xff2a375a),
                image: DecorationImage(
                  image: AssetImage('assets/images/qwe2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  ProgressBar(
                    icons: _icons,
                    count: _questionIndex,
                    total: data.questions.length,
                  ),

                  _questionIndex < data.questions.length
                  ? Quiz(
                    index: _questionIndex,
                    questionData: data,
                    onChangeAnswer: _onChangeAnswer,
                  )
                  : Result(
                    count: _countResult,
                    total: data.questions.length,
                    onClearState: _clearState,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
