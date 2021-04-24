import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class iconWig extends StatelessWidget {
  iconWig(this.newIcon,this.string);
   final newIcon;
   final string;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          newIcon,
          size: 60,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          string,
          style: TextStyle(fontSize: 20,),
        )
      ],
    );
  }
}