import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You Did It !';
    if (resultScore <= 5) {
      resultText = 'You Are Innocent !';
    } else if (resultScore > 5) {
      resultText = 'You Are Incredible !';
    } else {
      resultText = 'You Are Magnificent !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Center(
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz',
            ),
          )
        ],
      ),
    );
  }
}
