import 'package:flutter/material.dart';
// ignore: camel_case_types
class newCard extends StatelessWidget {
  newCard({this.colour, this.cardItem, this.onPress});
  final Widget cardItem;
  final Color colour;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardItem,
        width: double.infinity,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}