// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:spark/model/questions.dart';
import 'package:spark/util/hex.dart';

class quizApp extends StatefulWidget {
  const quizApp({Key? key}) : super(key: key);

  @override
  State<quizApp> createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {
  int _currentQuestionIndex = 0;
  var isButtonClickable = true;
  var isButtonClickable2 = false;
  var currentbuttonindex = true;
  String correct = "";
  String wrong = "";
  Color grad_blue = Hexcolor("#33ccff");
  Color grad_purple = Hexcolor("#ff99cc");
  Color grad_shap = Hexcolor("#9F2B68");
  List questionBank = [
    Question.name("Are you Pro ?", true),
    Question.name("The Supreme law of the land is the Constitution.", true),
    Question.name(
        "The two rights in the Declaration of Independence are:"
        " \n Life "
        "\n Pursuit of happiness.",
        true),
    Question.name("The (U.S.) Constitution has 26 Amendments.", false),
    Question.name(
        "Freedom of religion means:\nYou can practice any religion, "
        "or not practice a religion.",
        true),
    Question.name("Journalist is one branch or part of the government.", false),
    Question.name("The Congress does not make federal laws.", false),
    Question.name("There are 100 U.S. Senators.", true),
    Question.name("We elect a U.S. Senator for 4 years.", false), // 6
    Question.name("We elect a U.S. Representative for 2 years", true),
    Question.name(
        "A U.S. Senator represents all people of the United States", false),
    Question.name("We vote for President in January.", false),
    Question.name("Who vetoes bills is the President.", true),
  ];
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
            Center(
              child: Image.asset(
                "images/flag.jpg",
                width: 250,
                height: 180,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 120,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.blueGrey.shade400,
                      style: BorderStyle.solid,
                    )),
                child: Center(
                    child: Text(
                  questionBank[_currentQuestionIndex].questionText,
                  style: TextStyle(fontSize: 16.9, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Opacity(
                  opacity: currentbuttonindex ? 1.0 : 0.2,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        currentButtonindex(0);
                      },
                      child: Text("1"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        textStyle: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Opacity(
                  opacity: currentbuttonindex ? 1.0 : 0.2,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        currentButtonindex(1);
                      },
                      child: Center(child: Text("2")),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        textStyle: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Opacity(
                    opacity: currentbuttonindex ? 1.0 : 0.2,
                    child: ElevatedButton(
                      onPressed: () {
                        currentButtonindex(2);
                      },
                      child: Center(child: Text("3")),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: currentbuttonindex
                            ? Colors.greenAccent
                            : Colors.blue,
                        textStyle: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Opacity(
                  opacity: isButtonClickable2 ? 1.0 : 0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey.shade900),
                      onPressed: (() {
                        _previousQuestion();
                        makeActive();
                      }),
                      child: Icon(Icons.arrow_back_ios_new_outlined)),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey.shade900),
                    onPressed: (() {
                      _checkAnswer(true);
                      makeNull();
                    }),
                    child: Text("True", style: TextStyle(color: Colors.white))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey.shade900),
                    onPressed: (() {
                      _checkAnswer(false);
                      makeNull();
                    }),
                    child: Text(
                      "False",
                      style: TextStyle(color: Colors.white),
                    )),
                Opacity(
                  opacity: isButtonClickable ? 1.0 : 0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey.shade900),
                      onPressed: (() {
                        _nextQuestion();
                        if (isButtonClickable) {
                          makeNull();
                        }
                      }),
                      child: Icon(Icons.arrow_forward_ios_outlined)),
                ),
              ],
            ),
            Text(
              correct,
              style: TextStyle(
                  color: Colors.green.shade400,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              wrong,
              style: TextStyle(
                  color: Colors.red.shade900,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  _checkAnswer(bool userChoice) {
    setState(() {
      if (_currentQuestionIndex != (questionBank.length - 1)) {
        _currentQuestionIndex++;
      }
      if (userChoice == questionBank[_currentQuestionIndex].isCorrect) {
        final snackBar = SnackBar(
            backgroundColor: Colors.green,
            duration: const Duration(milliseconds: 500),
            content: Text("Correct"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        final snackBar = SnackBar(
            backgroundColor: Colors.red,
            duration: const Duration(milliseconds: 500),
            content: Text("Wrong !!!"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      if (_currentQuestionIndex != (questionBank.length - 1)) {
        // _currentQuestionIndex++;
      }
      if (_currentQuestionIndex == (questionBank.length - 1)) {
        isButtonClickable = false;
      }
    });
  }

  _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex != (questionBank.length - 1)) {
        _currentQuestionIndex++;
      }
    });
  }

  _previousQuestion() {
    setState(() {
      if (_currentQuestionIndex != 0) {
        _currentQuestionIndex--;
      }
    });
  }

  makeNull() {
    setState(() {
      if (_currentQuestionIndex == (questionBank.length - 1)) {
        isButtonClickable = false;
        debugPrint("$isButtonClickable");
      }

      if (_currentQuestionIndex != (questionBank[0])) {
        isButtonClickable2 = true;
      }
    });
  }

  makeActive() {
    setState(() {
      if (_currentQuestionIndex != (questionBank.length - 1)) {
        isButtonClickable = true;
      }
      if (_currentQuestionIndex == 0) {
        isButtonClickable2 = false;
      }
    });
  }

  currentButtonindex(int i) {
    setState(() {
      if (i != _currentQuestionIndex) {
        _currentQuestionIndex = i;
        currentbuttonindex = false;
        if (i == _currentQuestionIndex) {
          // currentbuttonindex = true;
        }
      }
    });
  }
}
