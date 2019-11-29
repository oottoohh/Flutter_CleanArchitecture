import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tdd_flutter/features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number of Knowledge',
      theme: ThemeData(
          primaryColor: Colors.grey.shade700,
          accentColor: Colors.grey.shade400),
      home: NumberTriviaPage(),
    );
  }
}
