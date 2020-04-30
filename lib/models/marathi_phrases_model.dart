import 'dart:collection';

class MarathiPhrasesModel {
  final String marathi;
  final String english;
  final String soundClip;

  MarathiPhrasesModel({
    this.marathi,
    this.english,
    this.soundClip,
  });
}

class MarathiPhrasesList {
  UnmodifiableListView<MarathiPhrasesModel> get getMarathiPhrasesList =>
      UnmodifiableListView(_phrasesData);

  List<MarathiPhrasesModel> _phrasesData = [
    new MarathiPhrasesModel(
      marathi: "आपण कुठे जात आहात?",
      english: "Where are you going?",
      soundClip: 'assets/color_black.mp3',
    ),
    new MarathiPhrasesModel(
      marathi: "आपले नाव काय आहे?",
      english: "What is your name?",
      soundClip: 'assets/color_black.mp3',
    ),
    new MarathiPhrasesModel(
      marathi: "माझं नावं ... आहे",
      english: "My name is...",
      soundClip: 'assets/color_black.mp3',
    ),
    new MarathiPhrasesModel(
      marathi: "आपलला कस वाटतंय",
      english: "How are you feeling?",
      soundClip: 'assets/color_black.mp3',
    ),
    new MarathiPhrasesModel(
      marathi: "मला छान वाटत आहे.",
      english: "I'm feeling good.",
      soundClip: 'assets/color_black.mp3',
    ),
    new MarathiPhrasesModel(
      marathi: "आपण येत आहे का?",
      english: "Are you coming?",
      soundClip: 'assets/color_black.mp3',
    ),
    new MarathiPhrasesModel(
      marathi: "होय, मी येत आहे.",
      english: "Yes, I'm coming.",
      soundClip: 'assets/color_black.mp3',
    ),
    new MarathiPhrasesModel(
      marathi: "मी येतोय.",
      english: "I'm coming.",
      soundClip: 'assets/color_black.mp3',
    ),
    new MarathiPhrasesModel(
      marathi: "चल जाऊया",
      english: "Let's go.",
      soundClip: 'assets/color_black.mp3',
    ),
    new MarathiPhrasesModel(
      marathi: "इकडे या",
      english: "Come here.",
      soundClip: 'assets/color_black.mp3',
    ),
  ];
}
