import 'package:flutter/material.dart';
import 'package:super_daddy/views/home.dart';
import 'package:super_daddy/views/login.dart';
import 'package:super_daddy/views/register.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.orange[700],
        buttonColor: Colors.orange[700],
      ),
      routes: {
        "home_page":(context)=>HomePage(),
        "login_page":(context)=>LoginPage(),
        "register_page":(context)=>Register(),
      },
      home: LoginPage(),
    );
  }
}
