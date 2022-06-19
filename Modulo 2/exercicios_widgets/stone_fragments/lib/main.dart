import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Stone(title: 'Stone Fragments'),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

enum StoneType {
  fragment,
  pieces,
  stone,
}

class Stone extends StatefulWidget {
  const Stone({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Stone> createState() => _StoneState();
}

class _StoneState extends State<Stone> {
  StoneType _stoneType = StoneType.fragment;
  int _count = 10;
  int _fragments = 0;
  int _pieces = 0;
  int _stone = 0;

  String link = 'https://camo.githubusercontent.com/0abe58ebc2fe9cc1089ab3915e6156b2c30622b405529dc42965d603f468abf4/68747470733a2f2f692e696d6775722e636f6d2f6a54714e6137442e706e67';
  String link2 = 'https://camo.githubusercontent.com/394b5b22aaad6b38d4d0ba61dd39c660d7f6f177cec3d435875f7deaa65b43e9/68747470733a2f2f692e696d6775722e636f6d2f495235536e36582e706e67';
  String link3 = 'https://camo.githubusercontent.com/afc2d6fab0b5262d761f4f7ea53440db2d4363ff86d955e03837d0325963ecc8/68747470733a2f2f692e696d6775722e636f6d2f4a4165475262312e706e67';

  void _fragmentsCounter() {
    if (_stoneType == StoneType.fragment) {
      link = link;
    } else if (_stoneType == StoneType.pieces) {
      link = link2;
    } else if (_stoneType == StoneType.stone) {
      link = link3;
    }
    setState(() {
      _fragments++;
    });
    if (_pieces == _count) {
      _count = _count + 10;
    }
    if (_fragments >= _count) {
      setState(() {
        _pieces++;
        _fragments = 0;
        _stoneType = StoneType.pieces;
      });
      setState(() {
        _fragments++;
      });
    }
    if (_pieces >= _count) {
      setState(() {
        _stone++;
        _stoneType = StoneType.stone;
      });
      setState(() {
        _fragments++;
      });
    }
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: InkWell(
          onTap: _fragmentsCounter,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  link,
                  width: 200,
                  height: 200,
                ),
                Text(
                  'Você possui $_stone Stones, $_pieces Pieces e $_fragments fragmentos',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
