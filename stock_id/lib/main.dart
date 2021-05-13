import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';
import 'package:stock_id/Auth/login.dart';
// import 'package:stock_id/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: stockPrimary),
      home: Login(),
    );
  }
}
