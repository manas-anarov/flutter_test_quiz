import 'package:flutter/material.dart';
import 'package:flutter_piano/app/constants/app_colors.dart';
import 'package:flutter_piano/app/widgets/key_widget.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class CostumPiano extends StatefulWidget {
  const CostumPiano({Key key}) : super(key: key);

  @override
  _CostumPianoState createState() => _CostumPianoState();
}

class _CostumPianoState extends State<CostumPiano> {
  String _clickedMelody = "do";

  int count = 0;
  String joopFooter = "";

  List<SurooJooop> _surooText = [
    SurooJooop("Atin kim  ?", true, "Askarali", "Oma"),
    SurooJooop("1+1= ?", false, "1", "2"),
    SurooJooop("4+4= ?", true, "8", "4"),
    SurooJooop(
        "The .... is a Capital of Great Britain ?", false, "Bishkek", "London"),
    SurooJooop("Made in ?", true, "China", "Moscow"),
    SurooJooop("Waragara Du ?", false, "Despasito", "To making Love ME"),
  ];

  void joopBeruu(bool joop) {
    if (_surooText[count].joop == joop) {
      joopFooter = joopFooter + "+";
    }
    if (_surooText[count].joop != joop) {
      joopFooter = joopFooter + "-";
    }

    setState(() {
      if (count < _surooText.length) {
        count = count + 1;
      }
      if (_surooText.length == count) {
        count = 0;
        joopFooter = "";
      }
    });
    var sal = 1;
    sal = "ssss";
    print(sal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(_surooText[count].suroo),
              InkWell(
                onTap: () {
                  joopBeruu(true);
                },
                child: Text(_surooText[count].variant_one),
              ),
              InkWell(
                onTap: () {
                  joopBeruu(false);
                },
                child: Text(_surooText[count].variant_two),
              ),
              Text("$joopFooter"),
            ],
          ),
        ),
      ),
    );
  }
}

/// Represents a tourism location a user can visit.
class SurooJooop {
  final String suroo;
  final bool joop;
  final String variant_one;
  final String variant_two;

  SurooJooop(
    this.suroo,
    this.joop,
    this.variant_one,
    this.variant_two,
  );

  // NOTE: implementing functionality here in the next step!
}
