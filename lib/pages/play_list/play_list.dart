import 'package:assignment4_01/pages/music_player/music_player.dart';
import 'package:assignment4_01/pages/play_list/widgets/song_card_listview.dart';
import 'package:flutter/material.dart';

import 'widgets/play_buttons.dart';
import 'widgets/upper_row.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key});

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  List<bool> isSelectedList = [
    false,
    false,
    true,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5FBFF),
      body: Column(
        children: [
          UpperRow(),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            height: 300,
            child: SongCardListView(),
          ),
          PlayButtons(),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
