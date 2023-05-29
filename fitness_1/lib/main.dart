import 'package:fitness_1/pages/home_page.dart';
import 'package:fitness_1/utils/routes.dart';
import 'package:fitness_1/widgets/themes.dart';
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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
