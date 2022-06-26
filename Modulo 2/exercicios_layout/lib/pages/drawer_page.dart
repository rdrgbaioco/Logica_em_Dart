import 'package:exercicios_layout/widgets/menu_drawer.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Drawer'),
        backgroundColor: Colors.pink,
      ),
      endDrawer: const MenuDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Arraste Para Cima ou Para Baixo para Mudar de Pagina',
            ),
          ],
        ),
      ),
    );
  }
}