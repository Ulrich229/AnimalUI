import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedIndex;
  final itemLabels = ['Home', 'Discover', 'Profile'];
  @override
  void initState() {
    _selectedIndex = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height / 12,
      width: deviceSize.width,
      color: Colors.black,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              3,
              (index) => InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: BottomItem(
                    label: itemLabels[index],
                    selected: _selectedIndex == index,
                  ))),
        ),
      ),
    );
  }
}

class BottomItem extends StatefulWidget {
  final String label;
  bool selected;
  BottomItem({@required this.selected, @required this.label});
  @override
  _BottomItemState createState() => _BottomItemState();
}

class _BottomItemState extends State<BottomItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              color: widget.selected ? Colors.yellow : Colors.grey,
              fontSize: 15,
            ),
          ),
          if (widget.selected)
            Container(height: 2, width: 20, color: Colors.yellow, margin: EdgeInsets.only(top:5),)
        ],
      ),
    );
  }
}
