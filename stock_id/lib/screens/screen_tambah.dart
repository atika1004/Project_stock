import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';

class TambahScreen extends StatelessWidget {
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
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: "Nama Barang",
              labelStyle: TextStyle(
              fontSize: 12,
              )
            )
          ),
          TextField(
            decoration: InputDecoration(
              suffixIcon: Container(
                width: 100.0,
                child: Row(
                  children: [
                    IconButton(onPressed: () {},
                               icon: Icon(Icons.add_circle_outline),
                               ),
                    IconButton(icon: Icon(Icons.do_disturb_on_outlined), onPressed: () {})
                    ]
                  ),
                )
              )
            ),
          Row(children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0
                  ),
                child:TextField(
                  decoration: InputDecoration(
                    labelText: "Harga Beli",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      ),
                    suffixIcon: IconButton (
                      onPressed: () {},
                      icon: Icon(Icons.create_outlined),
                      )
                    )
                  ),
                ),
              ),
            Expanded(child: TextField(
              decoration: InputDecoration(
                labelText: "Harga Jual",
                labelStyle: TextStyle(
                  fontSize: 12,
                  ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.create_outlined),
                  )
                )
              )
            )
        ],
      ),
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
                       )
                     )
                ]
            )
          ],
        ),
    );
  }
}
