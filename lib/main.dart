import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Homepage.dart';

void main() => runApp(BMIcalculator());

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff1a0e3f),
          scaffoldBackgroundColor: Color(0xff0a0e21)),
      home: Homepage(),
    );
  }
}
