import 'package:flutter/material.dart';

class MusicSlider extends StatefulWidget {
  const MusicSlider({super.key});

  @override
  State<MusicSlider> createState() => _MusicSliderState();
}

class _MusicSliderState extends State<MusicSlider> {
  double currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 25.0, end: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1:47',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black26,
                ),
              ),
              Text(
                '4:00',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackShape: RoundedRectSliderTrackShape(),
                  trackHeight: 5.0,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7.0),
                ),
                child: Container(
                  width: 400,
                  child: Slider(
                    value: currentSliderValue,
                    min: 0,
                    max: 100,
                    thumbColor: Color.fromARGB(255, 129, 154, 224),
                    inactiveColor: Color.fromARGB(255, 211, 219, 241),
                    activeColor: Color.fromARGB(255, 161, 179, 229),
                    label: currentSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        currentSliderValue = value;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
