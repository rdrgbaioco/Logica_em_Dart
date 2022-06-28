import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> with TickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 10),)
      ..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                if (controller.status == AnimationStatus.completed) {
                  controller.reset();
                } else {
                  controller.forward();
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.upload),
                  //Padding(padding: EdgeInsets.only(left: 10)),
                  Text('Upload'),
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          if (porcentagem() == '100 %') const Text('Upload Completo!')
          else Text(porcentagem() == '0 %' ? 'Clique para iniciar o upload' : porcentagem()),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: LinearProgressIndicator(
                  minHeight: 10,
                  value: controller.value,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(calcularColor(value: controller.value.toDouble())),
              ),
            ),
          )
        ],
      ),
    );
  }

  String porcentagem() {
    var value = controller.value;
    var porcentagem = value * 100;
    return '${porcentagem.toStringAsFixed(0)} %';
  }

  Color calcularColor({required double value}) {
    if (value > 0.80) {
      return Colors.green;
    } else if (value > 0.40) {
      return Colors.orange;
    } else {
      return Colors.yellow;
    }
  }
}
