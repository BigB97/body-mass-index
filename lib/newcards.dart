import 'package:flutter/material.dart';
// ignore: camel_case_types
class newCard extends StatelessWidget {
  newCard(@required this.colour,this.cardItem);
  final Widget cardItem;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardItem,
      width: double.infinity,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}