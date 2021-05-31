import 'package:figma_login/screens/auth_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: MyHome(),
    );
  }
}
// на своем телефоне (экран 6.67) запускается нормально,
// через эмулятор (экран 5-5.5 наверное) выдает выход за рамки