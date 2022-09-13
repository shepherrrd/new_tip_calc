import 'package:flutter/material.dart';

class quizApp extends StatefulWidget {
  const quizApp({Key? key}) : super(key: key);

  @override
  State<quizApp> createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True Citizen"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/flag.jpg",
              width: 250,
              height: 180,
            )
          ],
        ),
      ),
    );
  }
}
