import 'dart:ui';

import 'package:first_screen_challenge/data/animal_data.dart';
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
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: BackButton(color: Colors.grey),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(210, 255, 208, 224),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Heart(),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.end,
                          '${widget.animal.name}',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Spacer(),
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(220 / 360),
                          child: Icon(
                            Icons.female_sharp,
                            color: Colors.grey,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${widget.animal.breed}',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '${widget.animal.age}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 24.0,
                        ),
                        Text(
                          '${widget.animal.distance} kms away',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    // SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 250,
                                  maxWidth: 70,
                                ),
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: animal.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'images/${widget.animal.image}',
                                          height: 50.0,
                                          width: 50.0,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 300,
                                  maxWidth: 200,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Image.asset(
                                      'images/${widget.animal.image}',
                                      // height: 350.0,
                                      // width: 300.0,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          SizedBox(height: 10),
                          Text(
                            lorem(paragraphs: 1, words: 50),
                            style:
                                TextStyle(color: Colors.grey[600], height: 1.4),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.transparent,
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                ),
                color: Colors.red,
              ),
              width: 180,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.pets,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'ADOPT',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
