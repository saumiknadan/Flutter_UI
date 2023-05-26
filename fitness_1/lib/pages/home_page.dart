import 'package:fitness_1/widgets/drawer.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Saumik";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child:
            Container(child: Text("Welcome to $days days of flutter by $name")),
      ),
      drawer: MyDrawer(),
    );
  }
}
