import 'package:fitness_1/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fitness_1/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(), //amra route ongshe eta set korechi
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,  //eta primary color dibe.. r base color wise onno gulo change kore nibe
          scaffoldBackgroundColor: Colors.white), 
          
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
