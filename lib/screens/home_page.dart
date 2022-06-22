import 'package:first_screen_challenge/widgets/animal_list_widget.dart';
import 'package:flutter/material.dart';
import '../data/icon_data.dart';
import '../data/animal_data.dart';
import '../widgets/list_icon_widget.dart';
import '../widgets/nav_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: AppBar(
            centerTitle: true,
            elevation: 0,
            title: const Text('Cameron St., Boston',
                style: TextStyle(color: Color.fromARGB(255, 62, 62, 62))),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(
              color: Colors.grey,
            ),
          ),
        ),
      ),
      drawer: NavDrawer(),
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
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return ListIconWidget(category: category[index]);
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: animal.length,
                    itemBuilder: (context, index) {
                      return AnimalListWidget(animal: animal[index]);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
