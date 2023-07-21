import 'package:assignment4_01/pages/music_player/music_player.dart';
import 'package:assignment4_01/pages/play_list/play_list.dart';
import 'package:flutter/material.dart';

class UpperRow extends StatefulWidget {
  const UpperRow({super.key});

  @override
  State<UpperRow> createState() => _UpperRowState();
}

class _UpperRowState extends State<UpperRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(start: 20, top: 130),
          height: 55,
          width: 55,
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
                Icons.file_present_rounded,
                size: 25,
                color: Colors.black26,
              ),
            ),
            onPressed: () {},
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MusicPlayer();
              },
            ));
          },
          child: Container(
            margin: EdgeInsetsDirectional.only(top: 130),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 20,
                    spreadRadius: 5,
                    offset: Offset(9, 12)),
                BoxShadow(
                    color: Colors.white,
                    blurRadius: 20,
                    spreadRadius: 10,
                    offset: Offset(-9, -12)),
              ],
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/image.jpeg',
              ),
              radius: 80,
            ),
          ),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(end: 20, top: 130),
          height: 55,
          width: 55,
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
                Icons.more_horiz,
                size: 25,
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
