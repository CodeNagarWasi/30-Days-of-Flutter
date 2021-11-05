import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final days = 30;
  final name = "Adamya Raj Sharma";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlipLip"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello I am ${name.toUpperCase()} ," +
              "Welcome to $days days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
