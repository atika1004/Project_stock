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
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                    children: <Widget>[
                      HomeMenu(
                        title: "Tambah Stok Barang",
                        iconSrc: Icons.add_box,
                      ),
                      HomeMenu(
                        title: "Daftar Stok Barang",
                        iconSrc: Icons.inventory,
                      ),
                      HomeMenu(
                        title: "Ambil Stok Barang",
                        iconSrc: Icons.delivery_dining,
                      ),
                      HomeMenu(
                        title: "Tentang Stock.Id",
                        iconSrc: Icons.info,
                      ),
                    ],
                  ),
              ),
            ),
        ],
    );
  }
}

class HomeMenu extends StatelessWidget {
  final IconData iconSrc;
  final String title;
  const HomeMenu({
    Key key,
    this.iconSrc,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: <Widget>[
          Spacer(),
          Icon(iconSrc, size: 60,),
          Spacer(),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: stockText,
              ),
          ),
        ],
      ),
    );
  }
}

