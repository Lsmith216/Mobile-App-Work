import 'package:flutter/material.dart';

import 'package:uniprog/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'App',
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Home());
  }
}
