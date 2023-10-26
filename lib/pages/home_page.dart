import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "moksh";
    return Scaffold(
      appBar: AppBar(
        title: Text("Connect App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
