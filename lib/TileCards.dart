import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  Tile({@required this.tileColor, this.tileContent});
  final Widget tileContent;
  final Color tileColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: tileContent,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: tileColor),
    );
  }
}
