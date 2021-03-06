import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() => {_questionIndex += 1});
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': "What's your favorite color?",
        'answers': ['Black', 'Red', 'Green', 'Blue'],
      },
      {
        'questionText': "What's your favorite animal?",
        'answers': ['Rabbit', 'Dog', 'Cat', 'Bird']
      },
      {
        'questionText': "What's your favorite music genre",
        'answers': ['Rock', 'Country', 'R&b', 'Funk']
      }
    ];
    //

    // "What's your favorite animal?",
    ;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Complete Flutter Guide'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers']as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
// Widget build(BuildContext context) {
//   return MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('My First App'),
//         backgroundColor: Color(0xff230802),
//       ),
//       body: Text('Main body'),
//     ),
//   );
// }
// }
