import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';
import 'package:stock_id/screens/components/header_with_box.dart';
import 'package:stock_id/screens/components/home_menu_card.dart';
import 'package:stock_id/screens/screen_tambah.dart';
import 'package:stock_id/screens/screen_barang.dart';
import 'package:stock_id/screens/screen_kurang.dart';
import 'package:stock_id/screens/screen_tentang.dart';

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
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    children: <Widget>[
                      HomeMenu(
                        title: "Tambah Stok Barang",
                        iconSrc: Icons.add_box,
                        press: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => AddStock()),
                          );
                        },
                      ),
                      HomeMenu(
                        title: "Daftar Stok Barang",
                        iconSrc: Icons.inventory,
                        press: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => BarangScreen()),
                          );
                        },
                      ),
                      HomeMenu(
                        title: "Ambil Stok Barang",
                        iconSrc: Icons.delivery_dining,
                        press: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => KurangScreen()),
                          );
                        },
                      ),
                      HomeMenu(
                        title: "Tentang Stock.Id",
                        iconSrc: Icons.info,
                        press: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => TentangScreen()),
                          );
                        },
                      ),
                    ],
                  ),
              ),
            ),
        ],
    );
  }
}
