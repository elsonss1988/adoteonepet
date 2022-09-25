import 'dart:io';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  Widget build(BuildContext context) {
    final emailField = TextField(
        style: TextStyle(fontSize: 20.0),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Email",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final passwordField = TextField(
        obscureText: true,
        style: TextStyle(fontSize: 20.0),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        ));

    final loginButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color.fromRGBO(1, 160, 199, 1),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.pushNamed(context, '/cadastro');
          },
          child: Text("Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ));

    final signupButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color.fromRGBO(199, 80, 1, 1),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.pushNamed(context, '/cadastro');
          },
          child: Text("Cadastrar",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ));

    final forgetLink = Text("Esqueci minha senha",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 10.0, color: Colors.blue, fontWeight: FontWeight.bold));

    return SingleChildScrollView(
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.5,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                    child: Image.network(
                        'https://www.dart-et-flutter.com/wp-content/uploads/2022/02/dashatar.png',
                        fit: BoxFit.contain),
                  ),
                  SizedBox(height: 48.0),
                  emailField,
                  SizedBox(height: 24.0),
                  passwordField,
                  SizedBox(height: 36.0),
                  loginButton,
                  SizedBox(height: 16.0),
                  signupButton,
                  SizedBox(height: 16.0),
                  forgetLink,
                  SizedBox(height: 16.0),
                ]),
          ),
        ),
      ),
    );
  }
}
