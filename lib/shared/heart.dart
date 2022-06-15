import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({
    Key? key,
  }) : super(key: key);

  @override
  State<Heart> createState() => _HeartState();
}

bool _heartOn = false;

class _HeartState extends State<Heart> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        print(_heartOn);
        setState(() {
          _heartOn = !_heartOn;
        });
        print(_heartOn);
      },
      icon: Icon(
        _heartOn ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 30,
      ),
    );
  }
}
