import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../models/animal.dart';
import '../shared/heart.dart';

class Details extends StatefulWidget {
  final Animal animal;
  const Details({Key? key, required this.animal}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ClipRRect(
              child: Image.asset(
            'images/${widget.animal.image}',
            height: 360,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          )),
          const SizedBox(height: 30),
          ListTile(
            title: Text(widget.animal.name!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[800])),
            subtitle: Text('${widget.animal.gender} ${widget.animal.age}',
                style: const TextStyle(letterSpacing: 1)),
            trailing: Heart(),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              lorem(paragraphs: 1, words: 60),
              style: TextStyle(color: Colors.grey[600], height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
