import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';

class BarangScreen extends StatefulWidget {
  _BarangScreenState createState() => _BarangScreenState();
}

class _BarangScreenState extends State<BarangScreen> {
  List barang = ['Air mineral', 'Plastik makanan', 'Kotak nasi', 'Gelas plastik', 'Minuman sachet', 'Kopi bubuk'];
  List jumlah = ['8/10', '4/20', '3/30', '7/21', '10/30', '18/30'];
  List harga = ['3.000', '12.000', '4.000', '2.000', '2.000', '2.500'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: stockBackground,
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
      body: ListView.builder(
        itemCount: barang.length,
        itemBuilder: (BuildContext context, int index) => Container(
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Container(
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        color: Colors.blue,
                        child: Icon(
                          Icons.inventory,
                        ),
                      ),
                      SizedBox(width: 13.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            barang[index], 
                            style: TextStyle(
                              color: stockText,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Jumlah : ", 
                                style: TextStyle(
                                  color: stockText,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12.0,
                                ),
                              ),
                              Text(
                                jumlah[index], 
                                style: TextStyle(
                                  color: stockText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Harga : ", 
                                style: TextStyle(
                                  color: stockText,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12.0,
                                ),
                              ),
                              Text(
                                harga[index], 
                                style: TextStyle(
                                  color: stockText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],),
                        ],),
                    ],),
                ],),
            ),
          ),
        ),
      ),
    );
  }
}