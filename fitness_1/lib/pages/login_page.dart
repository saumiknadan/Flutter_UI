import 'package:fitness_1/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/img/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 28, color: Colors.red, fontWeight: FontWeight.bold),
              textScaleFactor: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
