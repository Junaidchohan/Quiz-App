import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
// Import 'Result' widget if available

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ... Your other code ...
  var questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'Text': 'Red', 'Score': 10},
        {'Text': 'Green', 'Score': 5},
        {'Text': 'Blue', 'Score': 3},
        {'Text': 'White', 'Score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': [
        {'Text': 'Snake', 'Score': 3},
        {'Text': 'Cat', 'Score': 11},
        {'Text': 'Cow', 'Score': 5},
        {'Text': 'Dog', 'Score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favourite instructor',
      'answers': [
        {'Text': 'Sir Junaid', 'Score': 1},
        {'Text': 'Sir Usman', 'Score': 1},
        {'Text': 'Sir Umar', 'Score': 1},
        {'Text': 'Sir Naeem', 'Score': 1},
      ],
    },
    // Add more questions here
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('We have more questions');
    } else {
      print('No more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(_totalScore,
                _resetQuiz), // Comment this line if Result is not defined yet
      ),
    );
  }
}
