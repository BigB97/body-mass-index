import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Color(0xFFFFFFFFFF),
          ),
        ),
        // accentColor: Color(),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
