import 'package:flutter/material.dart';
import 'package:trivia/initial_screen.dart';

void main(List<String> args) {
  runApp(Trivia());
}

class Trivia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialScreen(),
    );
  }
}
