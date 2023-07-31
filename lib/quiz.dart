import 'package:flutter/material.dart'; // Import the 'Question' widget here
import 'answer.dart';
import 'question.dart'; // Import the 'Answer' widget here

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions; // Corrected the parameter name
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    // Use curly braces for the constructor
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          // Corrected to QuestionWidget
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(() => answerQuestion(answer['Score']),
                  answer['Text'] as String),
            )
            .toList()
      ],
    );
  }
}
