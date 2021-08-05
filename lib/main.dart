import 'package:flutter/material.dart';

import './home_page/home_page.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI INSTA 1',
      home: HomePage(),
    );
  }
}