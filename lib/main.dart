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
  @override
  // Build returns the so-called "widget tree"
  // which tells Flutter what to draw on the screen.
  Widget build(BuildContext context) {
    return MaterialApp(
      // Home widget is Scaffold
      home: Scaffold(
        // It contains the widget AppBar
        appBar: AppBar(
          // Which contains the Text widget as a title
          title: Text(
              '~My little poem~'),
        ),
        body: Text('''Roses are red,
Violets are bule,
\nUnexpected { on line 32...'''),
      ),
    );
  }
}
