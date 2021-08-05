import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: 30,
      width: deviceSize.width/5.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Dot(Colors.grey),
          Dot(Colors.grey),
          Dot(Colors.yellow),
          Dot(Colors.grey),
          Dot(Colors.grey),
        ],
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final Color color;
  Dot(this.color);
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: color == Colors.yellow?8:7,
      width: color == Colors.yellow?8:7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: color,
      ),
      
    );
  }
}