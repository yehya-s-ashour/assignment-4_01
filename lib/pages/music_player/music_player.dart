import 'package:assignment4_01/dummy_data.dart';
import 'package:assignment4_01/pages/music_player/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/image_circle_avatar.dart';
import 'widgets/music_slider.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  int index = 2;
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5FBFF),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            AppBarr(),
            ImageCircleAvatar(),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    songs[index]['song'],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    songs[index]['description'],
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
            ),
            MusicSlider(),
            Expanded(
                flex: 2,
                child: SizedBox(
                  height: 50,
                )),
            Expanded(
              flex: 2,
              child: Row(
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
                      onPressed: () {
                        setState(() {
                          print(index);

                          if (index > 0) index--;
                        });
                      },
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
                      onPressed: () {
                        setState(() {
                          print(index);
                          if (index < 4) index++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
