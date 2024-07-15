import 'package:flutter/material.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Cars'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(this.title),
        ),
        body: new Column(children: <Widget>[
            CarWidget("Bmw", "M3"),
            CarWidget("Nissan", "GTR"),
            CarWidget("Nissan", "Sentra"),
            ],
            ),
    );
  }
}
class CarWidget extends StatelessWidget {
  CarWidget(this.make, this.model, ) : super();
  final String make;
  final String model;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
          Text(make),
          Text(model),
        ]));
  }
}