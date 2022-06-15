import 'package:flutter/material.dart';

class Heart extends StatelessWidget {
  const Heart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: Colors.grey[400],
        size: 30,
      ),
      onPressed: () {},
    );
  }
}
