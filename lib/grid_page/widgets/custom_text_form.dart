import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: deviceSize.width/1.20,
      padding: EdgeInsets.symmetric(horizontal:10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: TextFormField(
        cursorColor: Colors.yellow,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.grey,),
          hintText: 'Search',
          hintStyle: TextStyle(color:Colors.grey),
          border: InputBorder.none
        ),
      ),
    );
  }
}