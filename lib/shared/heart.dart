import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({
    Key? key,
  }) : super(key: key);

  @override
  State<Heart> createState() => _HeartState();
}

bool isSelected = false;

class _HeartState extends State<Heart> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: isSelected
          ? Icon(Icons.favorite, size: 30, color: Colors.red)
          : Icon(Icons.favorite_border, size: 30, color: Colors.grey),
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
          print('isSelected: $isSelected');
        });
      },
    );
  }
}
