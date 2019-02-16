import 'package:flutter/material.dart';
import './ui/login_page.dart';
import './ui/home_page.dart';
import './ui/register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => LoginPage(),
        "/home_page": (context) => HomePage(),
        "/register_page": (context) => RegisterPage()
      },
    );
  }
}
