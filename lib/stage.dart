import 'package:flutter/material.dart';
import 'package:music_game/constants.dart';
import 'package:music_game/enums.dart';

class Stage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://i.ytimg.com/vi/wrpgVH-AqY4/maxresdefault.jpg"),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            VerticalDivider(
              color: Colors.white,
            ),
            VerticalDivider(
              color: Colors.white,
            ),
            VerticalDivider(
              color: Colors.white,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            note(InstrumentImages[Instrument.Tom]),
            note(InstrumentImages[Instrument.Snare]),
            note(InstrumentImages[Instrument.Basedrum]),
            note(InstrumentImages[Instrument.Hihat]),
          ],
        )
      ],
    );
  }

  Widget note(String imageUrl) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        // color: Colors.white24,
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
