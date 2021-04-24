import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconWig.dart';
import 'newcards.dart';

Color activecolor= Color(0xFF1D1E33);
Color inactivecolor= Color(0xFF111328);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  Color maleColor = inactivecolor;
  Color femaleColor = inactivecolor;
  void toggly(int gender){
    if(gender == 1 ){
      if(maleColor == inactivecolor){
        maleColor = activecolor;
        femaleColor = inactivecolor;
      } else {
        maleColor = inactivecolor;
      }
    }
    if(gender == 2){
      if(femaleColor == inactivecolor){
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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        toggly(1);
                      });
                    },
                    child: newCard(
                      maleColor,
                      iconWig(FontAwesomeIcons.mars, 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        toggly(2);
                      });
                    },
                    child: newCard(
                      femaleColor,
                      iconWig(FontAwesomeIcons.venus, 'Female'),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: newCard(
                    inactivecolor,
                    Column(
                      children: [
                      ],
                    ))),
            Expanded(
                child: Row(
              children: [
                Expanded(child: newCard(inactivecolor, Column())),
                Expanded(child: newCard(inactivecolor, Column())),
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
            )
          ],
        ),
      ),
    );
  }


}
