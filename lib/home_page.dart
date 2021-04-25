import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'iconWig.dart';
import 'newcards.dart';

Color activecolor = Color(0xFF1D1E33);
Color inactivecolor = Color(0xFF111328);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleColor = inactivecolor;
  Color femaleColor = inactivecolor;

  void toggly(int gender) {
    if (gender == 1) {
      if (maleColor == inactivecolor) {
        maleColor = activecolor;
        femaleColor = inactivecolor;
      } else {
        maleColor = inactivecolor;
      }
    }
    if (gender == 2) {
      if (femaleColor == inactivecolor) {
        femaleColor = activecolor;
        maleColor = inactivecolor;
      } else {
        femaleColor = inactivecolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("BMI")),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: newCard(
                    onPress: () {
                      setState(() {
                        toggly(1);
                      });
                    },
                    colour: maleColor,
                    cardItem: iconWig(FontAwesomeIcons.mars, 'Male'),
                  ),
                ),
                Expanded(
                  child: newCard(
                    onPress: () {
                      setState(() {
                        toggly(2);
                      });
                    },
                    colour: femaleColor,
                    cardItem: iconWig(FontAwesomeIcons.venus, 'Female'),
                  ),
                ),
              ],
            )),
            Expanded(
                child: newCard(
              colour: inactivecolor,
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: newCard(
                  colour: inactivecolor,
                )),
                Expanded(
                    child: newCard(
                  colour: inactivecolor,
                )),
              ],
            )),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              color: Color(0xFFEB1555),
              width: double.infinity,
              height: 70.0,
              child: Center(
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
