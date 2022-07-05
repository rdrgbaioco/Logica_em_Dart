import 'package:flutter/material.dart';

void main() => runApp(const CatiorosList());


class CatiorosList extends StatelessWidget {
  const CatiorosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 11,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purpleAccent[700],
            centerTitle: true,
            title: const Text('Catioros'),
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.pink,
              physics: BouncingScrollPhysics(),
              tabs: <Widget>[
                Tab(
                  child: Text('Dachshund',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Golden',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Bulldog',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Pug',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Spaniel',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Husky',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Border Collie',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Beagle',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Weimaraner',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Dalmata',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
                Tab(
                  child: Text('Atentado',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
              customCard(
                  name: 'Dachshund',
                  link: 'assets/images/Dachshund.png'
              ),
              customCard(
                  name: 'Golden',
                  link: 'assets/images/Golden.png'
              ),
              customCard(
                  name: 'Bulldog',
                  link: 'assets/images/Bulldog.png'
              ),
              customCard(
                  name: 'Pug',
                  link: 'assets/images/Pug.png'
              ),
              customCard(
                  name: 'Spaniel',
                  link: 'assets/images/Spaniel.png'
              ),
              customCard(
                  name: 'Husky',
                  link: 'assets/images/Husky.png'
              ),
              customCard(
                  name: 'Border Collie',
                  link: 'assets/images/Border_Collie.png'
              ),
              customCard(
                  name: 'Beagle',
                  link: 'assets/images/Beagle.png'
              ),
              customCard(
                  name: 'Weimaraner',
                  link: 'assets/images/Weimaraner.png'
              ),
              customCard(
                  name: 'Dalmata',
                  link: 'assets/images/Dalmata.png'
              ),
              customCard(
                  name: 'Atentado',
                  link: 'assets/images/Atentado.png'
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customCard({required String name, required String link}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(link)
          ),
        ],
      ),
    );
  }
}
