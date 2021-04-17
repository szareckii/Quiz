import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answer;

  Question({
    @required this.title,
    @required this.answer,
  });
}

class QuestionData{
  final _data = [
    Question(
        title: 'Кем хочешь',
        answer: [
          {'answer' : 'Хочу 1',},
          {'answer' : 'Хочу 2',},
          {'answer' : 'Хочу 3', 'isCorrect': 1},
          {'answer' : 'Хочу 4',},
        ]
    ),
    Question(
        title: 'Продолжи фразу',
        answer: [
          {'answer' : 'йцук 1', 'isCorrect': 1},
          {'answer' : 'йцук 2',},
          {'answer' : 'йцук 3',},
          {'answer' : 'йцук 4',},
        ]
    ),
    Question(
        title: 'Ту би ор нот',
        answer: [
          {'answer' : 'туби 1',},
          {'answer' : 'туби 2',},
          {'answer' : 'туби 3',},
          {'answer' : 'туби 4', 'isCorrect': 1},
        ]
    ),
  ];

  List<Question> get questions => [..._data];
}