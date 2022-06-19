import 'dart:ffi';

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
      home: const MyComponents(title: 'Reuso de Componentes'),
    );
  }
}

class MyComponents extends StatefulWidget {
  const MyComponents({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyComponents> createState() => _MyComponentsState();
}

class _MyComponentsState extends State<MyComponents> {

  Widget createComponent({required Color color,required double height,required double width}) {
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createComponent(color: Colors.green, height: 40,width: 150),
            createComponent(color: Colors.yellow, height: 35,width: 35),
            createComponent(color: Colors.blue, height: 50,width: 170),
            createComponent(color: Colors.red, height: 35,width: 130),
          ],
        ),
      ),

    );
  }
}
