import 'package:first_screen_challenge/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListIconWidget extends StatelessWidget {
  final Category category;
  const ListIconWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    // color: Colors.red,
                    // highlightColor: Colors.red,
                    icon: SvgPicture.asset(
                      "images/${category.imageIcon}",
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "${category.name}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
