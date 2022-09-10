import 'package:flutter/material.dart';

class wisdom extends StatefulWidget {
  const wisdom({Key? key}) : super(key: key);

  @override
  State<wisdom> createState() => _wisdomState();
}

class _wisdomState extends State<wisdom> {
  int _index = 0;

  List quotes = [
    "Your mama is Beautiful",
    "Your mama is Beaut",
    "Your mama is Beautifully famous  ggjjgkdnjsjnsdnjsnjsdnksdjnsjvkdsnvsldnskdvsndkvnjvnsldvnsjdnvsldnvndslkdnvsodniinakdnalj",
    "Your mama is nice"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(color: Colors.greenAccent.shade100),
                child: Center(
                    child: Text(
                  quotes[_index % quotes.length],
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ))),
            Divider(
              thickness: 2.3,
              color: Colors.deepPurpleAccent.shade100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                onPressed: _showQuote,
                icon: Icon(
                  Icons.wb_sunny,
                  color: Colors.amberAccent,
                ),
                label: Text(
                  "Inspire me !",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurple.shade100,
              ),
            ),
            Spacer(),
          ],
        ),
      )),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}
