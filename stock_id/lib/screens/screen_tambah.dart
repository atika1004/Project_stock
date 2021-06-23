import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';
import 'package:stock_id/screens/screen_barang.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddStock extends StatefulWidget {
  @override
  _AddStockState createState() => _AddStockState();
}

class _AddStockState extends State<AddStock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: stockBackground,
      appBar: AppBar(
        title: Text(
          "Tambah Stok",
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
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: "Nama Barang",
              labelStyle: TextStyle(
              fontSize: 12,
              ) //TextStyle
            ) //InputDecoration
          ), //TextField
          TextField(
            decoration: InputDecoration(
              suffixIcon: Container(
                width: 100.0,
                child: Row(
                  children: [
                    IconButton(onPressed: () {},
                               icon: Icon(Icons.add_circle_outline),
                               ), //IconButton
                    IconButton(icon: Icon(Icons.do_disturb_on_outlined), onPressed: () {})
                    ]
                  ), //Row
                ) //Container
              ) //InputDecoration
            ), //TextField
          Row(children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0
                  ), //EdgeInsets.symmetric
                child:TextField(
                  decoration: InputDecoration(
                    labelText: "Harga Beli",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      ), //TextStyle
                    suffixIcon: IconButton (
                      onPressed: () {},
                      icon: Icon(Icons.create_outlined),
                      ) //IconButton
                    ) //InputDecoration
                  ), //TextField
                ), //Container
              ), //Expanded
            Expanded(child: TextField(
              decoration: InputDecoration(
                labelText: "Harga Jual",
                labelStyle: TextStyle(
                  fontSize: 12,
                  ), //TextStyle
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.create_outlined),
                  ) //IconButton
                ) //InputDecoration
              ) //TextField
            ) //Expanded
        ],
      ), //Row
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {},
                     style: TextButton.styleFrom(
                       primary: Colors.grey
                       ),
                     child: Row(
                       children: [
                         Icon(Icons.camera_alt_outlined),
                         Text("Upload Gambar"),
                         ]
                       ) //Row
                     ), //TextButton
          SizedBox(height: 25.0,),
          Card(
              color: Colors.black87,
              elevation: 5,
              child: Container(
                height: 50,
                width: 200,
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
                      "Tambah Barang",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        ), //TextStyle
                      ), //Text
                    ), //Center
                  ), //InkWell
                ), //Container
              ), //Card
            ]
          ) //Row
        ], //<Widget>[]
      ), //Column
    ); //Scaffold
  }

  // void add() {
  //   //save to db
  //   CollectionReference ref = Firestore.instance
  //     .collection('users')
  //     .document(FirebaseUser.instance.currentUser.uid)
  //     .collection('stock');
  // }

}