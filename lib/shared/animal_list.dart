import 'package:first_screen_challenge/shared/heart.dart';
import 'package:flutter/material.dart';

import '../models/animal.dart';
import '../screens/details.dart';

class AnimalList extends StatefulWidget {
  const AnimalList({Key? key}) : super(key: key);

  @override
  State<AnimalList> createState() => _AnimalListState();
}

class _AnimalListState extends State<AnimalList> {
  final List<Widget> _animalTiles = [];
  final GlobalKey _listKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    _addAnimal();
  }

  void _addAnimal() {
    List<Animal> _animals = [
      Animal(
        name: 'Sparky',
        breed: 'Golden Retriever',
        gender: 'Female',
        age: '8 months old',
        distance: '2.5',
        image: 'dog1.jpg',
      ),
      Animal(
        name: 'Charlie',
        breed: 'Boston Terrier',
        gender: 'Male',
        age: '1.5 years old',
        distance: '2.5',
        image: 'dog2.jpg',
      ),
      Animal(
        name: 'Max',
        breed: 'Siberian Husky',
        gender: 'Male',
        age: '1 years old',
        distance: '2.5',
        image: 'dog.jpg',
      ),
      Animal(
        name: 'Sparky',
        breed: 'Golden Retriever',
        gender: 'Female',
        age: '8 months old',
        distance: '2.5',
        image: 'dog4.jpeg',
      ),
      Animal(
        name: 'Átila',
        breed: 'Lhasa Apso',
        gender: 'Male',
        age: '12 years old',
        distance: '2.5',
        image: 'atila.png',
      ),
    ];

    _animals.forEach((Animal animal) {
      _animalTiles.add(_buildTiles(animal));
    });
  }

  Widget _buildTiles(Animal animal) {
    return GestureDetector(
      onTap: (() => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Details(animal: animal)),
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
                            'images/${animal.image}',
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
                              '${animal.name}',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '${animal.breed}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 2),
                            Text('${animal.gender}, ${animal.age}'),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 24.0,
                                  semanticLabel: '${animal.distance}',
                                ),
                                Text('${animal.distance} kms away'),
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _animalTiles.length,
        itemBuilder: (context, index) {
          return _animalTiles[index];
        });
  }
}
