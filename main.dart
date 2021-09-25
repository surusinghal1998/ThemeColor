import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Homeapp(),
      theme: new ThemeData(
          primarySwatch: Colors.green,
          // brightness: Brightness.dark,
          brightness: Brightness.light,
          accentColor: Colors.red),
    );
  }
}

class Homeapp extends StatefulWidget {
  const Homeapp({Key? key}) : super(key: key);

  @override
  _HomeappState createState() => _HomeappState();
}

class _HomeappState extends State<Homeapp> {
  String mydata = "hello World";

  void _changetext() {
    setState(() {
      if (mydata.startsWith("h")) {
        mydata = "Welcome in this world";
      } else {
        mydata = "hello World";
      }
    });
  }

  Widget _bodywidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              mydata,
              style: new TextStyle(color: Colors.green, fontSize: 30.0),
            ),
            new RaisedButton(
              child: new Text(
                "Click",
                style: new TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: _changetext,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Hello Singhal Bartan Bhandar"),
        ),
        body: _bodywidget());
  }
}
