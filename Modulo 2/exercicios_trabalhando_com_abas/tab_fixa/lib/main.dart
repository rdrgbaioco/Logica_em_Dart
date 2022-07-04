import 'package:flutter/material.dart';
import 'package:tab_fixa/resources/pets_list.dart';

void main() => runApp(const MyFixedTab());


class MyFixedTab extends StatelessWidget {
  const MyFixedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String link = "https://camo.githubusercontent.com/4b783104cc582931f87054bdaa2d0f9353d5a210ef7f772420928c1501f54f22/68747470733a2f2f692e696d6775722e636f6d2f654641723551582e706e67";

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[300],
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(link)
            ),
            title: const Text('Meu Pet: A loja do seu pet'),
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.pink,
              physics: BouncingScrollPhysics(),
              tabs: <Widget>[
                Tab(
                  child: Text('CATIOROS',
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('GATINEOS',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('PASSARINEOS',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Center(
                child: Text('CATIOROS',
                  style: TextStyle(
                      fontSize: 22
                  ),
                ),
              ),
              Center(
                child: Text('GATINEOS',
                  style: TextStyle(
                      fontSize: 22
                  ),
                ),
              ),
              Center(
                child: Text('PASSARINEOS',
                  style: TextStyle(
                      fontSize: 22
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}
