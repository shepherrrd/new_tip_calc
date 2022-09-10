import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webview extends StatelessWidget {
  const webview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Emmanuel Oladosu",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: WebView(
        initialUrl: ("https://emmanueloladosu.com"),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
