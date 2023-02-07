import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/print.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Printer());
  }
}
