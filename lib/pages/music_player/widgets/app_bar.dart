import 'package:assignment4_01/pages/play_list/play_list.dart';
import 'package:flutter/material.dart';

class AppBarr extends StatefulWidget {
  const AppBarr({super.key});

  @override
  State<AppBarr> createState() => _AppBarrState();
}

class _AppBarrState extends State<AppBarr> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 55,
            width: 55,
            margin: EdgeInsetsDirectional.only(start: 15),
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
                  Icons.arrow_back_ios_new_rounded,
                  size: 25,
                  color: Colors.black26,
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return PlayList();
                  },
                ));
              },
            ),
          ),
          Container(
            height: 55,
            width: 55,
            margin: EdgeInsetsDirectional.only(end: 15),
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
                  Icons.stop,
                  size: 25,
                  color: Colors.black26,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
