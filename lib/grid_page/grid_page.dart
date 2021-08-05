import 'package:flutter/material.dart';

import './widgets/custom_text_form.dart';
import './widgets/grid.dart';
import './widgets/my_nav_bar.dart';

class GridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
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
            SizedBox(height: 40),
            CustomTextForm(),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Grid(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyNavBar(),
    );
  }
}
