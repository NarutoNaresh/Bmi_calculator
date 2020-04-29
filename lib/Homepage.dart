import 'package:bmicalculator/BmiCalculation.dart';
import 'package:bmicalculator/ResultPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CustomTileContent.dart';
import 'RoundIconButton.dart';
import 'TileCards.dart';

var oncolor = Color(0xff0a0e30);
var offcolor = Color(0xff0a0e21);
// ignore: non_constant_identifier_names
var m_x = offcolor;
// ignore: non_constant_identifier_names
var f_x = offcolor;
var height = 130;
var weight = 50;
var age = 25;
String selectedGender;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void getColor(String g) {
    if (g == 'm') {
      if (m_x == offcolor) {
        m_x = oncolor;
        f_x = offcolor;
        selectedGender = 'Male';
      } else {
        m_x = offcolor;
      }
    } else if (g == 'f') {
      if (f_x == offcolor) {
        f_x = oncolor;
        m_x = offcolor;
        selectedGender = 'Female';
      } else {
        f_x = offcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("BMI CALCULATOR")),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          getColor("m");
                        });
                      },
                      child: Tile(
                        tileColor: m_x,
                        tileContent:
                            CustomtTileContent(FontAwesomeIcons.male, "MALE"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          getColor('f');
                        });
                      },
                      child: Tile(
                        tileColor: f_x,
                        tileContent: CustomtTileContent(
                            FontAwesomeIcons.female, "FEMALE"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Tile(
                tileColor: Color(0xff0a0e30),
                tileContent: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 60.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                    Slider(
                      max: 230,
                      min: 100,
                      value: height.toDouble(),
                      activeColor: Color(0xffeb1555),
                      inactiveColor: Colors.grey[300],
                      onChanged: (double updateheight) {
                        setState(() {
                          height = updateheight.round();
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Tile(
                      tileColor: Color(0xff0a0e30),
                      tileContent: Column(
                        children: <Widget>[
                          Text("WEIGHT", style: TextStyle(fontSize: 18)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                    fontSize: 60.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("kg", style: TextStyle(fontSize: 16.0))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundedButton(
                                color: Color(0xff4c4f5e),
                                onpressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icons.add,
                                longpressed: () {
                                  weight++;
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundedButton(
                                color: Color(0xff4c4f5e),
                                icon: Icons.remove,
                                onpressed: () {
                                  setState(() {
                                    if (weight > 1) weight--;
                                  });
                                },
                                longpressed: () {
                                  weight--;
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Tile(
                      tileColor: Color(0xff0a0e30),
                      tileContent: Column(
                        children: <Widget>[
                          Text("AGE", style: TextStyle(fontSize: 18)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: TextStyle(
                                    fontSize: 60.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("yr", style: TextStyle(fontSize: 16.0))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundedButton(
                                color: Color(0xff4c4f5e),
                                onpressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icons.add,
                                longpressed: () {
                                  age++;
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundedButton(
                                color: Color(0xff4c4f5e),
                                icon: Icons.remove,
                                onpressed: () {
                                  setState(() {
                                    if (age > 0) age--;
                                  });
                                },
                                longpressed: () {
                                  age--;
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: GestureDetector(
                  onTap: () {
                    BMIcalculator bmi =
                        BMIcalculator(height: height, weight: weight);
                    final value = bmi.calculate();
                    final word = bmi.getResult();
                    final sent = bmi.getInfo();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ResultPage(
                        res: value,
                        ans: word,
                        dis: sent,
                      );
                    }));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "GET RESULT",
                        style: TextStyle(fontSize: 30.0),
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
                  )),
            ),
          ],
        ));
  }
}
