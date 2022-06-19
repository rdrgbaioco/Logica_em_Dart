import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Coin(title: 'Contador de Moedas'),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

enum Coins {
  copper,
  silver,
  gold,
}

class Coin extends StatefulWidget {
  const Coin({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Coin> createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  Coins coins = Coins.copper;
  int _coin = 0;

  void _coinsCounter() {

    if (coins == Coins.copper) {
      if (_coin >= 10) {
        setState(() {
          coins = Coins.silver;
          _coin = 0;
        });
      }
      setState(() {
        _coin++;
      });
    } else if (coins == Coins.silver) {
      if (_coin >= 10) {
        setState(() {
          coins = Coins.gold;
          _coin = 0;
        });
      }
      setState(() {
        _coin++;
      });
    } else {
      setState(() {
        _coin++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.white),),
      ),
      body: InkWell(
        onTap: _coinsCounter,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Você tem $_coin moeda(s) ${coins.name.capitalize()}:',
                style: const TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
