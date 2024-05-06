import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(RandomWordApp());
}

class RandomWordApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nasta selector'),
        ),
        body: RandomWordPage(),
      ),
    );
  }
}

class RandomWordPage extends StatefulWidget {
  @override
  _RandomWordPageState createState() => _RandomWordPageState();
}

class _RandomWordPageState extends State<RandomWordPage> {
  final List<String> words = ["Puff", "Roti", "Chatpat", "Bread", "Biscuit"];
  final Random random = Random();
  String randomWord = '';

  void chooseRandomWord() {
    final int randomIndex = random.nextInt(words.length);
    setState(() {
      randomWord = words[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'K aaula??:',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Text(
            randomWord,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: chooseRandomWord,
            child: Text('Choose'),
          ),
        ],
      ),
    );
  }
}
