import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.pink[50],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
            child: Center(child: Text('Menu', style: TextStyle(fontSize: 20, color: Colors.white))),
          ),
          ListTile(
            leading: const Icon(Icons.widgets_rounded, color: Colors.lightBlueAccent, size: 40),
            title: const Text('Flutter', style: TextStyle(fontSize: 20, color: Colors.black)),
            subtitle: const Text('Tudo são Widgets'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.emoji_emotions_outlined, color: Colors.pink, size: 40),
            title: const Text('Dart', style: TextStyle(fontSize: 20, color: Colors.black)),
            subtitle: const Text('É muito forte'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.coffee, color: Colors.brown, size: 40),
            title: const Text('Cafessíneo', style: TextStyle(fontSize: 20, color: Colors.black)),
            subtitle: const Text('Quero cafééééé'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
