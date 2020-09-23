import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  void answerQuestion() {
    setState(()=>{
      questionIndex += 1

    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favoitre color?",
      "What's your favoite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Complete Flutter Guide'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'), 
              onPressed: answerQuestion),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => {print('Answer 2 confirmed')},
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {print('Answer 3 confirmed')},
            ),
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
