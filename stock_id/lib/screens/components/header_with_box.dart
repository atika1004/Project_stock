import 'package:flutter/material.dart';
import 'package:stock_id/constants.dart';

class HeaderBox extends StatelessWidget {
  const HeaderBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: stockPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: stockPadding,
              right: stockPadding,
              bottom: 36 + stockPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: stockPrimary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Stock.Id',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: stockPadding),
              padding: EdgeInsets.symmetric(horizontal: stockPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: stockPrimary.withOpacity(0.30),
                  )
                ],
              ),
              child: Text(
                'Selamat datang di aplikasi Stock.Id',
                style: TextStyle(
                  color: stockText,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}