import 'package:flutter/material.dart';

class Boldtext extends StatelessWidget {
  Boldtext({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
