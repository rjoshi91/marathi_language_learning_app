import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:marathilanguagelearningapp/models/marathi_phrases_model.dart';

class PhrasesScreen extends StatefulWidget {
  @override
  PhrasesScreenState createState() {
    return new PhrasesScreenState();
  }
}

class PhrasesScreenState extends State<PhrasesScreen> {
  MarathiPhrasesList marathiPhrasesList = MarathiPhrasesList();
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
            itemCount: marathiPhrasesList.getMarathiPhrasesList.length,
            itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: new Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          marathiPhrasesList.getMarathiPhrasesList[i].marathi,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        new Text(
                          marathiPhrasesList.getMarathiPhrasesList[i].english,
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
                      await _playLocal(marathiPhrasesList
                          .getMarathiPhrasesList[i].soundClip);
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
