import 'package:flutter/material.dart';

class CustomtTileContent extends StatelessWidget {
  CustomtTileContent(this.icon, this.string);
  final IconData icon;
  final String string;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          string,
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
