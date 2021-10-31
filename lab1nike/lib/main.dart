import 'package:flutter/material.dart';
import 'package:lab1/navegacion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NIKE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navegacion(),
    );
  }
}
