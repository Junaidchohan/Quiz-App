import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function junaidHandler;
  final String answerText;

  const Answer(this.junaidHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      padding: const EdgeInsets.all(37.0),
      width: double.infinity,
      // color: Colors.blue,
      child: ElevatedButton(
        child: Center(
          child: Text(
            answerText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onPressed: () => junaidHandler(),
      ),
    );
  }
}
//selectHandler
