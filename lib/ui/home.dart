// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, unused_element, unused_import, avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';

import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

import '../util/hex.dart';

class Scaffoldexample extends StatelessWidget {
  _tappedbutton() {
    debugPrint("Tapped button");
  }

  const Scaffoldexample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(
              onPressed: () => debugPrint("youre tapped"),
              icon: Icon(Icons.email)),
          IconButton(onPressed: _tappedbutton, icon: Icon(Icons.alarm))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.call_missed),
        onPressed: _tappedbutton,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: ("First"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: ("Second"),
          )
        ],
        onTap: (int index) => debugPrint("Tapped $index"),
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Custombutton(),
            // InkWell(
            //   child: Text(
            //     "click me",
            //     style: TextStyle(
            //         fontWeight: FontWeight.w600,
            //         fontStyle: FontStyle.italic,
            //         fontSize: 26.0),
            //   ),
            //   onTap: () => debugPrint("tapped"),
            // )
          ],
        ),
      ),
    );
  }
}

class Custombutton extends StatelessWidget {
  const Custombutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text("hello again"),
        );

        // ignore: deprecated_member_use
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.amber.shade100,
            borderRadius: BorderRadius.circular(8.2)),
        child: Text("Button"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.deepOrange,
      child: Center(
        child: Text(
          "Hello Flutter ",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 23.6,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
