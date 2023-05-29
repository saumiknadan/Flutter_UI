import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context ) => ThemeData(
      primarySwatch: Colors.blueGrey, //eta primary color dibe.. r base color wise onno gulo change kore nibe
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      scaffoldBackgroundColor: Colors.white);

       static ThemeData darkTheme(BuildContext context ) => ThemeData(
          brightness: Brightness.dark
      );
}
