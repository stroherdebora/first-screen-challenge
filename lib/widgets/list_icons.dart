import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListIcon extends StatelessWidget {
  const ListIcon({Key? key, required this.img, required this.category})
      : super(key: key);

  final String? img;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                // color: Colors.red,
                // highlightColor: Colors.red,
                icon: SvgPicture.asset(
                  "images/$img",
                  color: Colors.grey,
                ),
              ),
              Text(
                "$category",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
