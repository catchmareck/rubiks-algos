import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'rubiks_algorithm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rubiks Algos',
      home: RubiksAlgos(),
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
    );
  }
}

class RubiksAlgos extends StatefulWidget {
  @override
  RubiksAlgosState createState() => RubiksAlgosState();
}

class RubiksAlgosState extends State<RubiksAlgos> {
  int _bottomNavSelectedIndex = 0;
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _algorithms = RubiksAlgosData.algorithms.sublist(0);

  void _onBottomNavItemTapped(int index) {
    setState(() {
      _bottomNavSelectedIndex = index;
    });

    _filterList(index);
  }

  void _filterList(int bottomNavIndex) {
    int cubeSize = bottomNavIndex + 2;
    final algos = RubiksAlgosData.algorithms
        .where((RubiksAlgorithm algo) => algo.cubeSize == cubeSize)
        .toList();

    setState(() {
      _algorithms.clear();
      _algorithms.addAll(algos);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rubiks Algos'),
      ),
      body: _buildAlgosList(),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.lightBlue
        ),
        child: BottomNavigationBar(
          items: [
            { 'icon': Icons.filter_2, 'text': '2x2x2' },
            { 'icon': Icons.filter_3, 'text': '3x3x3' },
            { 'icon': Icons.filter_4, 'text': '4x4x4' },
            { 'icon': Icons.filter_5, 'text': '5x5x5' },
            { 'icon': Icons.filter_6, 'text': '6x6x6' },
          ].map((button) {
            return BottomNavigationBarItem(
              icon: Icon(button['icon']),
              title: Text(button['text']),
            );
          }).toList(),
          currentIndex: _bottomNavSelectedIndex,
          selectedItemColor: Colors.yellow[500],
          unselectedItemColor: Colors.white,
          onTap: _onBottomNavItemTapped,
        ),
      )
    );
  }

  Widget _buildAlgosList() {

    _filterList(_bottomNavSelectedIndex);
    return Container(
      child: ListView.builder(
        itemCount: _algorithms.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildAlgoCard(_algorithms[index]);
        },
      ),
    );
  }

  Widget _buildAlgoCard(RubiksAlgorithm algorithm) {
    return Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {},
          child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                        algorithm.image,
                        fit: BoxFit.fitWidth
                    ),
                ),
                Container(
                  width: 300,
                  height: 60,
                  child: Text(algorithm.steps, style: _biggerFont),
                ),
                Container(
                  width: 300,
                  height: 50,
                  padding: EdgeInsets.all(0.0),
                  margin: EdgeInsets.all(0.0),
                  child: Text(algorithm.name, style: _biggerFont, textAlign: TextAlign.center),
                ),
              ]
          ),
        )
    );
  }
}
