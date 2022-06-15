import 'package:first_screen_challenge/shared/animal_list.dart';
import 'package:first_screen_challenge/widgets/list_icons.dart';
import 'package:flutter/material.dart';
import '../widgets/nav_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AppBar(
            centerTitle: true,
            elevation: 0,
            title: const Text('Pets', style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(
              color: Colors.grey,
            ),
          ),
        ),
      ),
      drawer: const NavDrawer(),
      body: Container(
        padding: const EdgeInsets.only(top: 15),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 239, 237, 237),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListIcon(img: 'switch.svg', category: ''),
                    ListIcon(img: 'cao.svg', category: 'Dogs'),
                    ListIcon(img: 'gato.svg', category: 'Cats'),
                    ListIcon(img: 'cao.svg', category: 'Dogs'),
                    ListIcon(img: 'papagaio.svg', category: 'Birds'),
                  ],
                ),
              ),
              Expanded(
                flex: 9,
                child: AnimalList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
