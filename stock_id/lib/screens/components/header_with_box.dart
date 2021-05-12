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
        ],
      ),
    );
  }
}