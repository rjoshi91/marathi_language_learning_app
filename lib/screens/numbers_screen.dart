import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:marathilanguagelearningapp/models/marathi_input_model.dart';

class NumbersScreen extends StatefulWidget {
  @override
  NumbersScreenState createState() {
    return new NumbersScreenState();
  }
}

class NumbersScreenState extends State<NumbersScreen> {
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
            itemCount: marathiInputList.getMarathiNumbersList.length,
            itemBuilder: (context, int i) => new Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new ListTile(
                  leading: Image.asset(
                    marathiInputList.getMarathiNumbersList[i].avatarImage,
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
                          marathiInputList.getMarathiNumbersList[i].marathi,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        new Text(
                          marathiInputList.getMarathiNumbersList[i].english,
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.play_arrow),
                    iconSize: 30,
                    onPressed: () async {
                      await player.play(
                          marathiInputList.getMarathiNumbersList[i].soundClip);
//                      _playLocal(marathiInputList.getMarathiNumbersList[i].soundClip);
                    },
                  ),
                ),
                new Divider(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
