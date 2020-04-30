import 'dart:collection';

class MarathiInputModel {
  final String marathi;
  final String english;
  final String soundClip;
  final String avatarImage;

  MarathiInputModel(
      {this.marathi, this.english, this.soundClip, this.avatarImage});
}

class MarathiInputList {
  UnmodifiableListView<MarathiInputModel> get getMarathiNumbersList =>
      UnmodifiableListView(_numbersData);

  UnmodifiableListView<MarathiInputModel> get getMarathiFamilyList =>
      UnmodifiableListView(_familyData);

  UnmodifiableListView<MarathiInputModel> get getMarathiColorsList =>
      UnmodifiableListView(_colorsData);

  List<MarathiInputModel> _numbersData = [
    new MarathiInputModel(
      marathi: "एक",
      english: "One",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_one.png',
    ),
    new MarathiInputModel(
      marathi: "दोन",
      english: "Two",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_two.png',
    ),
    new MarathiInputModel(
      marathi: "तीन",
      english: "Three",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_three.png',
    ),
    new MarathiInputModel(
      marathi: "चार",
      english: "Four",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_four.png',
    ),
    new MarathiInputModel(
      marathi: "पाच",
      english: "Five",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_five.png',
    ),
    new MarathiInputModel(
      marathi: "सहा",
      english: "Six",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_six.png',
    ),
    new MarathiInputModel(
      marathi: "सात",
      english: "Seven",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_seven.png',
    ),
    new MarathiInputModel(
      marathi: "आठ",
      english: "Eight",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_eight.png',
    ),
    new MarathiInputModel(
      marathi: "नऊ",
      english: "Nine",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_nine.png',
    ),
    new MarathiInputModel(
      marathi: "दहा",
      english: "Ten",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/number_ten.png',
    ),
  ];

  List<MarathiInputModel> _familyData = [
    new MarathiInputModel(
      marathi: "आई",
      english: "Mother",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_mother.png',
    ),
    new MarathiInputModel(
      marathi: "वडील",
      english: "Father",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_father.png',
    ),
    new MarathiInputModel(
      marathi: "आजी",
      english: "GrandMother",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_grandmother.png',
    ),
    new MarathiInputModel(
      marathi: "आजोबा",
      english: "GrandFather",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_grandfather.png',
    ),
    new MarathiInputModel(
      marathi: "मुलगी",
      english: "Daughter",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_daughter.png',
    ),
    new MarathiInputModel(
      marathi: "मुलगा",
      english: "Son",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_son.png',
    ),
    new MarathiInputModel(
      marathi: "मोठी बहीण",
      english: "Older Sister",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_older_sister.png',
    ),
    new MarathiInputModel(
      marathi: "मोठा भाऊ",
      english: "Older Brother",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_older_brother.png',
    ),
    new MarathiInputModel(
      marathi: "तरुण बहीण",
      english: "Younger Sister",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_younger_sister.png',
    ),
    new MarathiInputModel(
      marathi: "तरुण भाऊ",
      english: "Younger Brother",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/family_younger_brother.png',
    ),
  ];

  List<MarathiInputModel> _colorsData = [
    new MarathiInputModel(
      marathi: "काळा",
      english: "Black",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/color_black.png',
    ),
    new MarathiInputModel(
      marathi: "तपकिरी",
      english: "Brown",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/color_brown.png',
    ),
    new MarathiInputModel(
      marathi: "पिवळे",
      english: "Dusty Yellow",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/color_dusty_yellow.png',
    ),
    new MarathiInputModel(
      marathi: "भुरा",
      english: "Gray",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/color_gray.png',
    ),
    new MarathiInputModel(
      marathi: "हिरवा",
      english: "Green",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/color_green.png',
    ),
    new MarathiInputModel(
      marathi: "मोहरीचा पिवळा",
      english: "Mustard Yellow",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/color_mustard_yellow.png',
    ),
    new MarathiInputModel(
      marathi: "लाल",
      english: "Red",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/color_red.png',
    ),
    new MarathiInputModel(
      marathi: "पांढरा",
      english: "White",
      soundClip: 'assets/color_black.mp3',
      avatarImage: 'images/color_white.png',
    ),
  ];
}
