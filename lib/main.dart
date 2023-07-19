import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  const JsonEncoder encoder = JsonEncoder.withIndent(' ');
  const data = [1, 2, 3, 'fireStore', 'lambda', 'amored45'];

  final jsonString = encoder.convert(data);
  print(jsonString);
  runApp(Texts(jsonString));
}

class Texts extends StatelessWidget {
  final String jsonString;

  const Texts(this.jsonString, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JSON Output'),
        ),
        body: Center(
          child: Text(
            jsonString,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arial',
            ),
          ),
        ),
      ),
    );
  }
}
