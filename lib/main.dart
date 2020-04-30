import 'package:flutter/material.dart';
import 'package:marathilanguagelearningapp/screens/colors_screen.dart';
import 'package:marathilanguagelearningapp/screens/family_screen.dart';
import 'package:marathilanguagelearningapp/screens/numbers_screen.dart';
import 'package:marathilanguagelearningapp/screens/phrases_screen.dart';

void main() => runApp(MarathiLearningApp());

class MarathiLearningApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Marathi Learning App",
      theme: new ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.deepOrangeAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: MarathiAppHome(),
    );
  }
}

class MarathiAppHome extends StatefulWidget {
  @override
  _MarathiAppHomeState createState() => _MarathiAppHomeState();
}

class _MarathiAppHomeState extends State<MarathiAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marathi Learning App"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(text: "Numbers"),
            Tab(text: "Family"),
            Tab(text: "Colors"),
            Tab(text: "Phrases"),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          NumbersScreen(),
          FamilyScreen(),
          ColorsScreen(),
          PhrasesScreen(),
        ],
      ),
    );
  }
}
