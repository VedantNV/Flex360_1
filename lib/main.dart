import 'package:flex360_login/login.dart';
import 'package:flex360_login/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => LoginPage(),
      'register': (context) => Register()
    },
  ));
}

