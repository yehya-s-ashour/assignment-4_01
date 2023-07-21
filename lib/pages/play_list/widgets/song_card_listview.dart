import 'package:assignment4_01/dummy_data.dart';
import 'package:flutter/material.dart';

class SongCardListView extends StatefulWidget {
  const SongCardListView({super.key});

  @override
  State<SongCardListView> createState() => _SongCardListViewState();
}

class _SongCardListViewState extends State<SongCardListView> {
  List<bool> isSelectedList = [
    false,
    false,
    true,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: songs.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsetsDirectional.only(
            start: 10,
            end: 10,
          ),
          decoration: BoxDecoration(
              color: isSelectedList[index] ? Color(0xffAECCE4) : null,
              borderRadius: BorderRadius.circular(13)),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelectedList[index] = !isSelectedList[index];
                for (int i = 0; i < isSelectedList.length; i++) {
                  if (i != index) {
                    isSelectedList[i] = !isSelectedList[index];
                  }
                }
              });
            },
            child: ListTile(
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
              trailing: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 30,
                        spreadRadius: 1,
                        offset: Offset(9, 12)),
                  ],
                  shape: BoxShape.circle,
                  color: !isSelectedList[index]
                      ? Color(0xffE5F3FD)
                      : Color.fromARGB(255, 129, 154, 224),
                ),
                child: InkWell(
                  child: Center(
                    child: Icon(
                      !isSelectedList[index]
                          ? Icons.play_arrow_rounded
                          : Icons.stop,
                      size: 20,
                      color: !isSelectedList[index]
                          ? Colors.black26
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
