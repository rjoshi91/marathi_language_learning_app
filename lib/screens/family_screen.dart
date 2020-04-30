import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:marathilanguagelearningapp/models/marathi_input_model.dart';

class FamilyScreen extends StatefulWidget {
  @override
  FamilyScreenState createState() {
    return new FamilyScreenState();
  }
}

class FamilyScreenState extends State<FamilyScreen> {
  MarathiInputList marathiInputList = MarathiInputList();
  AudioPlayer audioPlayer = AudioPlayer();
  final AudioCache player = AudioCache();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  Future _playLocal(String audioFile) async {
    final playMarathi = await player.play(audioFile);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: new ListView.builder(
            shrinkWrap: true,
            itemCount: marathiInputList.getMarathiFamilyList.length,
            itemBuilder: (context, int i) {
              return new Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new ListTile(
                    leading: new Image.asset(
                      marathiInputList.getMarathiFamilyList[i].avatarImage,
                      height: 40,
                      width: 40,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: new Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            marathiInputList.getMarathiFamilyList[i].marathi,
                            style: new TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                          new Text(
                            marathiInputList.getMarathiFamilyList[i].english,
                            style: new TextStyle(
                                color: Colors.grey, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.play_arrow),
                      iconSize: 30,
                      onPressed: () async {
                        await _playLocal(
                            marathiInputList.getMarathiFamilyList[i].soundClip);
                      },
                    ),
                  ),
                  new Divider(),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
