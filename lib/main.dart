import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const PetApp());
}

class PetApp extends StatelessWidget {
  const PetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(),
      home: HomePage(),
    );
  }
}
