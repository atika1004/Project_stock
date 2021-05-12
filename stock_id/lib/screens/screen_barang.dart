import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';

class BarangScreen extends StatefulWidget {
  _BarangScreenState createState() => _BarangScreenState();
}

class _BarangScreenState extends State<BarangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stok Barang",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: stockPrimary,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          tooltip: 'Kembali',
          onPressed: () {
            Navigator.pop(context);
            },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(),
        ],
      ),
    );
  }
}