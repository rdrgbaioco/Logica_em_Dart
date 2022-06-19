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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const Recipe(),
    );
  }
}

class Recipe extends StatefulWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {

  Widget createContainer({required Color color, required double height, required double width}) {
    return Container(
      color: color,
      height: height,
      width: width,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Receitas', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://images.aws.nestle.recipes/resized/ec225b0904a127b15839bd7ce47982ab_bolo-chocolate-simples-receitas-nestle_1200_600.jpg',
              width: 400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                createContainer(color: Colors.green, height: 100, width: 100),
                createContainer(color: Colors.red, height: 100, width: 100),
                createContainer(color: Colors.blue, height: 100, width: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
