import 'package:first_screen_challenge/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListIconWidget extends StatefulWidget {
  final Category category;
  const ListIconWidget({Key? key, required this.category}) : super(key: key);

  @override
  State<ListIconWidget> createState() => _ListIconWidgetState();
}

class _ListIconWidgetState extends State<ListIconWidget> {
  bool _isPressed = false;
  String hasImageIcon = 'switch.svg';

  @override
  void initState() {
    super.initState();
    // category.where((id) => id == id);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => setState(() {
            _isPressed = !_isPressed;
          })),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          // width: 120,
          decoration: BoxDecoration(
            color: _isPressed ? Colors.red : Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    "images/${widget.category.imageIcon}",
                    width: 35,
                    color: _isPressed ? Colors.white : Colors.grey,
                  ),
                ),
                hasImageIcon == "${widget.category.imageIcon}"
                    ? Text(
                        "${widget.category.name}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: _isPressed ? Colors.white : Colors.grey,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "${widget.category.name}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: _isPressed ? Colors.white : Colors.grey,
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
