import 'package:flutter/material.dart';
import 'package:flutter_catalog/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Many times we want not to declare datatype before making a variable so we use "var"

    return MaterialApp(
      home: HomePage(), 
    );
  } 
}
