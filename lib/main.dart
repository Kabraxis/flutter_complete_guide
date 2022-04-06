import 'package:flutter/material.dart';

Person({@required String name = 'Default', @required int age = 0}) {
  // this. tells Dart to assign the parameter name or age to the variables
  // on class level with the same name.
}

// runApp() is the function that builds the main widget and calls build() on it.
// This function takes the widget object I passed to it (MyApp()) and ensures
// that the widget tree of that widget gets created.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print('questionIndex is: ');
    print(questionIndex);
  }

  @override
  // Build returns the so-called "widget tree"
  // which tells Flutter what to draw on the screen.
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      // Home widget is Scaffold
      home: Scaffold(
        // It contains the widget AppBar
        appBar: AppBar(
          // Which contains the Text widget as a title
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Answer 3 chosen!'),
            ),
          ],
        ),
      ),
    );
  }
}
