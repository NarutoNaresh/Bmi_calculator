import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TileCards.dart';

class ResultPage extends StatelessWidget {
  final String res;
  final String ans;
  final String dis;
  ResultPage({@required this.res, @required this.ans, @required this.dis});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 10.0,
              top: 20,
            ),
            child: Text(
              'Your Results',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Expanded(
            flex: 6,
            child: Tile(
              tileColor: Color(0xff0a0e30),
              tileContent: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      ans.toUpperCase(),
                      style: TextStyle(fontSize: 30, color: Color(0xff24d876)),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      res,
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          dis,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 65.0,
              decoration: BoxDecoration(
                  color: Color(0xffeb1555),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0))),
            ),
          ),
        ],
      ),
    );
  }
}
