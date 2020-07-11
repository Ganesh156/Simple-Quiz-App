import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'Yeeee you did it..!!!';
    if (resultScore <= 30) {
      resultText = 'Your awesome and innocecent';
    } else if (resultScore <= 40) {
      resultText = 'Pretty likeable!!';
    } else if (resultScore <= 50) {
      resultText = 'Your are strange..';
    } else {
      resultText = 'Your sooo bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
