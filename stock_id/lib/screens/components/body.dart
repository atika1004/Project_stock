import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';
import 'package:stock_id/screens/components/header_with_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
        children: <Widget>[
          HeaderBox(size: size),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: stockPadding, vertical: stockPadding + 36),
              child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          children: <Widget>[
                            Spacer(),
                            Icon(Icons.add_box, size: 60,),
                            Spacer(),
                            Text(
                              "Tambah Stok Barang",
                              textAlign: TextAlign.center,

                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
            ),
        ],
    );
  }
}

