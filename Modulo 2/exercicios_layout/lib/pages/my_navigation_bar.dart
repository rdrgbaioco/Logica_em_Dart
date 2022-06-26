import 'package:flutter/material.dart';

class MyNavigatorBar extends StatefulWidget {
  const MyNavigatorBar({Key? key}) : super(key: key);

  @override
  State<MyNavigatorBar> createState() => _MyNavigatorBarState();
}

class _MyNavigatorBarState extends State<MyNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text('Navigator Bar'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Arraste Para Cima ou Para Baixo para Mudar de Pagina',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
        ],
        currentIndex: 0,
        onTap: (int index) {
        },
      ),
    );
  }
}
