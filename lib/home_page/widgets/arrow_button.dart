import 'package:flutter/material.dart';

import '../../grid_page/grid_page.dart';

class ArrowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>GridPage()));
      },
      child: Container(
        height: 60,
        width: deviceSize.width / 4.5,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.black,
          size: 25,
        ),
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
