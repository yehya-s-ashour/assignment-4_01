import 'package:flutter/material.dart';

class PlayButtons extends StatefulWidget {
  const PlayButtons({super.key});

  @override
  State<PlayButtons> createState() => _PlayButtonsState();
}

class _PlayButtonsState extends State<PlayButtons> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 65,
          width: 65,
          margin: EdgeInsetsDirectional.only(
            start: 70,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20,
                  spreadRadius: 2,
                  offset: Offset(9, 12)),
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 20,
                  spreadRadius: 10,
                  offset: Offset(-9, -12)),
            ],
            shape: BoxShape.circle,
            color: Color(0xffE5F3FD),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Center(
              child: Icon(
                Icons.keyboard_double_arrow_left_outlined,
                size: 35,
                color: Colors.black26,
              ),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          height: 65,
          width: 65,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20,
                  spreadRadius: 2,
                  offset: Offset(9, 12)),
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 20,
                  spreadRadius: 10,
                  offset: Offset(-9, -12)),
            ],
            shape: BoxShape.circle,
            color: Color(0xff799AFC),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Center(
              child: Icon(
                isPressed ? Icons.pause : Icons.play_arrow_rounded,
                size: 35,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              setState(() {
                isPressed = !isPressed;
              });
            },
          ),
        ),
        Container(
          height: 65,
          width: 65,
          margin: EdgeInsetsDirectional.only(end: 70),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20,
                  spreadRadius: 2,
                  offset: Offset(9, 12)),
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 20,
                  spreadRadius: 10,
                  offset: Offset(-9, -12)),
            ],
            shape: BoxShape.circle,
            color: Color(0xffE5F3FD),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Center(
              child: Icon(
                Icons.keyboard_double_arrow_right_outlined,
                size: 35,
                color: Colors.black26,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
