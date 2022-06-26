import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : preferredSize = const Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize;

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar>{

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 3,
      backgroundColor: Colors.yellow[300],
      iconTheme: const IconThemeData(color: Colors.brown),
      leading: const Icon(Icons.coffee, color: Colors.brown, size: 40),
      title: const Text('Coffee', style: TextStyle(color: Colors.brown, fontSize: 30)),
    );
  }
}