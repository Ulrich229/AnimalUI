import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Dots(),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: AnimalCard(
                        imagePath: 'assets/images/tiger.jpg', label: 'Tiger'),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: AnimalCard(
                        imagePath: 'assets/images/penguin.jpg',
                        label: 'Penguin'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10,0,10,10),
                                      child: AnimalCard(
                        imagePath: 'assets/images/horse.jpg', label: 'Horse'),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: AnimalCard(
                        imagePath: 'assets/images/elephant.jpg',
                        label: 'Elephant'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Dots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.all(0),
      child: Text(
        '...',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

class AnimalCard extends StatelessWidget {
  final String imagePath;
  final String label;
  AnimalCard({@required this.imagePath, @required this.label});
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height / 4,
      width: deviceSize.width / 2.25,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
            image: AssetImage(
              imagePath,
            ),
            fit: BoxFit.fill),
      ),
      child: Container(
          alignment: Alignment.center,
          height: 30,
          width: deviceSize.width,
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.values[4],
            ),
          )),
    );
  }
}
