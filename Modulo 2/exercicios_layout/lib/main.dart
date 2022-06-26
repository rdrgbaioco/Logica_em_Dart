import 'package:exercicios_layout/widgets/menu_drawer.dart';
import 'package:exercicios_layout/widgets/my_appbar.dart';
import 'package:exercicios_layout/page_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: PageControll(),
    );
  }
}

