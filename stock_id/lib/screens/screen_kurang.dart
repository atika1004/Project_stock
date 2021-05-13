import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';

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
      body: Column(
              children: <Widget> [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Nama Barang",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      ),
                    suffixIcon: IconButton (
                      onPressed: () {},
                      icon: Icon(Icons.create_outlined),
                      )
                    )
                  ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Jumlah Barang",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      ),
                    suffixIcon: Container(
                      width: 100.0,
                      child: Row(
                        children: [
                          IconButton(onPressed: () {},
                                     icon:Icon(Icons.do_disturb_on_outlined),)
                          ]
                        ),
                      )
                    )
                  ),
                ]
        )
    );
  }
}
