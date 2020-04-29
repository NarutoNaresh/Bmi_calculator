import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function onpressed;
  final Color color;
  final IconData icon;
  final Function longpressed;
  RoundedButton(
      {@required this.onpressed,
      @required this.color,
      @required this.icon,
      this.longpressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: color,
      constraints: BoxConstraints.tightFor(
        width: 46.0,
        height: 46.0,
      ),
      elevation: 2.0,
      onPressed: onpressed,
      onLongPress: longpressed,
      child: Icon(
        icon,
      ),
    );
  }
}
//0xff4c4f5e
