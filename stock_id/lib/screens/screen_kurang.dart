import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';
import 'package:stock_id/screens/screen_barang.dart';

class KurangScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: stockBackground,
      appBar: AppBar(
        title: Text(
          "Ambil Barang",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ), //TextStyle
        ), //Text
        backgroundColor: stockPrimary,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          tooltip: 'Kembali',
          onPressed: () {
            Navigator.pop(context);
            },
        ), //IconButton
       ), //AppBar
      body: Column(
              children: <Widget> [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Nama Barang",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      ), //TextStyle
                    suffixIcon: IconButton (
                      onPressed: () {},
                      icon: Icon(Icons.create_outlined),
                      ) //IconButton
                    ) //InputDecoration
                  ), //TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: "Jumlah Barang",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      ), //TextStyle
                    suffixIcon: Container(
                      width: 100.0,
                      child: Row(
                        children: [
                          IconButton(onPressed: () {},
                                     icon: Icon(Icons.add_circle_outline),
                                     ), //IconButton
                          IconButton(
                            icon:Icon(Icons.do_disturb_on_outlined),
                          onPressed: () {}) //IconButton
                          ]
                        ), //Row
                      ) //Container
                    ) //InputDecoration
                  ), //TextField
                SizedBox(
                  height: 30.0,
                  ),
                Card(
                  color: Colors.black87,
                  elevation: 5,
                  child: Container(
                    height: 50,
                    width: 250,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BarangScreen()),
                          );
                      },
                      child: Center(
                        child: Text(
                          "Ambil Barang",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            ), //TextStyle
                          ), //Text
                        ), //Center
                     ), //InkWell
                  ), //Container
               ), //Card
            ] //<Widget>[]
         ) //Column
      ); //Scaffold
   }
}
