import 'package:adote1pet/_model/cadastro.dart';
import 'package:adote1pet/home.dart';
import 'package:adote1pet/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cadastro.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Cadastro())],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/login': (context) => LoginScreen(),
      '/cadastro': (context) => SignUp()
    }, debugShowCheckedModeBanner: false, home: Home());
  }
}
