import 'package:flutter/material.dart';

class bizcard extends StatelessWidget {
  const bizcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Bizcard",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu_outlined,
            color: Colors.deepPurple,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Colors.pink.withOpacity(0.03),
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getcard(), _getavatar()],
        ),
      ),
    );
  }

  Container _getavatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/seed/picsum/200/300"),
            fit: BoxFit.cover,
          )),
    );
  }

  Container _getcard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.pinkAccent, borderRadius: BorderRadius.circular(4.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Shepherd",
                style: TextStyle(
                  fontSize: 20.9,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              )),
          Text("Shepherd.epizy.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outlined),
              Text("@shepherrd"),
            ],
          )
        ],
      ),
    );
  }
}
