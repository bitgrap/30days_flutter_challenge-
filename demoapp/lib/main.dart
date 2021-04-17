import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
      child: Center(
        child: Container(
          child: Text('30 Days Flutter'),
        ),
      ),
    ));
  }
}
