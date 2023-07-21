import 'package:assignment4_01/pages/play_list/play_list.dart';
import 'package:flutter/material.dart';

class ImageCircleAvatar extends StatefulWidget {
  const ImageCircleAvatar({super.key});

  @override
  State<ImageCircleAvatar> createState() => _ImageCircleAvatarState();
}

class _ImageCircleAvatarState extends State<ImageCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return PlayList();
            },
          ));
        },
        child: Container(
          margin: EdgeInsetsDirectional.only(
            start: 60,
            end: 60,
            top: 60,
            bottom: 40,
          ),
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
            radius: 250,
          ),
        ),
      ),
    );
  }
}
