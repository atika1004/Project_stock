import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';
import 'package:stock_id/screens/components/header_with_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderBox(size: size),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          // Container(
          //   width: size.width * 0.4,
          //   child: Padding(
          //     padding: EdgeInsets.only(top: stockPadding),
          //     child: GridView.count(
          //       crossAxisCount: 2,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

