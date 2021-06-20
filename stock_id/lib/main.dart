import 'package:flutter/material.dart';
import 'package:stock_id/auth_services.dart';
import 'package:stock_id/constants.dart';
import 'package:stock_id/wrapper.dart';
import 'package:provider/provider.dart';
// import 'package:stock_id/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        title: 'Login',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: stockPrimary),
        home: Wrapper(),
      ),
    );
  }
}
