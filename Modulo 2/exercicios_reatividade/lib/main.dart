import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlueAccent,
            Colors.purpleAccent,
          ],
        ),
      ),
      child: Center(
        child: Text('Flutter Gradient', style: TextStyle(color: Colors.white, fontSize: 32, decoration: TextDecoration.none)),
      ),
    ),
    );
  }
}