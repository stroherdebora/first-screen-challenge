import 'package:flutter/material.dart';

import '../models/animal.dart';
import '../screens/details.dart';
import '../shared/heart.dart';

class AnimalListWidget extends StatefulWidget {
  final Animal animal;
  const AnimalListWidget({Key? key, required this.animal}) : super(key: key);

  @override
  State<AnimalListWidget> createState() => _AnimalListWidgetState();
}

class _AnimalListWidgetState extends State<AnimalListWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(animal: widget.animal)),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, bottom: 10.0, top: 15.0),
            child: Container(
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/${widget.animal.image}',
                            height: 150.0,
                            width: 150.0,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.animal.name}',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '${widget.animal.breed}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 2),
                            Text(
                                '${widget.animal.gender}, ${widget.animal.age}'),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 24.0,
                                  semanticLabel: '${widget.animal.distance}',
                                ),
                                Text('${widget.animal.distance} kms away'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Heart(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
