import 'package:flutter/material.dart';

import './widgets/dots.dart';
import './widgets/arrow_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: deviceSize.height,
            width: deviceSize.width,
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.black,
                    )),
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    'assets/images/tigre.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: deviceSize.height,
            width: deviceSize.width,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60),
                  height: 75,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.yellowAccent,
                    width: 7,
                  )),
                ),
                Spacer(),
                Align(
                  child: Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Dots(),
                        SizedBox(height: 10),
                        ArrowButton(),
                      ],
                    ),
                  ),
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
