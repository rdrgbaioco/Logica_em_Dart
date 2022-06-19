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
      home: const Alinhamento(title: 'Alinhamento'),
    );
  }
}

class Alinhamento extends StatefulWidget {
  const Alinhamento({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Alinhamento> createState() => _AlinhamentoState();
}

class _AlinhamentoState extends State<Alinhamento> {

  Widget createComponent({required Color color, required double width, required double height}) {
    return Container(
      color: color,
      width: width,
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          createComponent(color: Colors.green, width: 100, height: 100),
          createComponent(color: Colors.yellow, width: 100, height: 100),
          createComponent(color: Colors.red, width: 100, height: 100),
        ],
      ),
    );
  }
}
