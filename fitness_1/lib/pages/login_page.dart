import 'package:fitness_1/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // variable declare part
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false; // button ta k abar ager moto kore dibe
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
        ),
      ),
      
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/img/hey.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
                textScaleFactor: 1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    // validator
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username can't be empty";
                      }
                      return null;
                    },

                    // on change method value ta k variable er vitor set korbe
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty";
                        } else if (value!.length < 6) {
                          return "Password length should be greated than 6";
                        }

                        return null;
                      }),

                  SizedBox(
                    height: 20,
                  ),

                  // Elevated Button er poriborte
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton ? 20 : 10),
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () => moveToHome(context),

                      // async {
                      //   setState(() {
                      //     changeButton = true;
                      //   });
                      //   await Future.delayed(Duration(seconds: 1));
                      //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                      // setState(() {
                      //   changeButton = false;    // button ta k abar ager moto kore dibe
                      //  });
                      // },

                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),

                        //jehetu material er vitor color deya hoyeche tai ekhane decoration dile conflict korbe

                        // decoration: BoxDecoration(
                        //     color: Colors.deepPurple,
                        //     borderRadius:
                        //         BorderRadius.circular(changeButton ? 20 : 10)),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //     ),
                  //   ),
                  //   style: TextButton.styleFrom(
                  //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  //   ),
                  // )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
