import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

class Heart extends StatefulWidget {
  const Heart({
    Key? key,
  }) : super(key: key);

  @override
  State<Heart> createState() => _HeartState();
}

bool _heartOn = false;

class _HeartState extends State<Heart> {
  bool iconSelected = false;
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: iconSelected
              ? Icon(Icons.favorite_border,
                  size: 30, color: iconSelected ? Colors.grey : Colors.red)
              : Icon(Icons.favorite,
                  size: 30, color: isFavourite ? Colors.grey : Colors.red),
          onPressed: () {
            setState(() {
              print('iconSelected: $iconSelected');
              isFavourite = !isFavourite;
              iconSelected = !iconSelected;
            });
          },
        ),
      ],
    );
  }
}


// IconButton(
      // color: color,
      // onPressed: () async {
        // print(_heartOn);
        // setState(() {
          // _heartOn = !_heartOn;
        // });
        // print(_heartOn);
      // },
      // icon: Icon(
        // _heartOn ? Icons.favorite : Icons.favorite_border,
        // color: Colors.red,
        // size: 30,
      // ),
      // );