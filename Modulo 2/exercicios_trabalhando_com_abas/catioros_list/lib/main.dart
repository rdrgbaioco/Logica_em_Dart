import 'package:flutter/material.dart';

void main() => runApp(const CatiorosList());


class CatiorosList extends StatelessWidget {
  const CatiorosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[300],
            // leading: ClipRRect(
            //     borderRadius: BorderRadius.circular(20),
            //     child: Image.network(link)
            // ),
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
