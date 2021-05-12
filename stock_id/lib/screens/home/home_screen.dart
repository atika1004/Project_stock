import 'package:flutter/material.dart';
import 'package:stock_id/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.drag_handle), 
        color: Colors.white,
        tooltip: 'Menu Button', 
        onPressed: () {},),
        
    );
  }
}