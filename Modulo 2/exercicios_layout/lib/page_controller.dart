import 'package:exercicios_layout/pages/card_nft.dart';
import 'package:exercicios_layout/pages/drawer_page.dart';
import 'package:exercicios_layout/pages/my_home_page.dart';
import 'package:exercicios_layout/pages/my_navigation_bar.dart';
import 'package:exercicios_layout/pages/progress_bar.dart';
import 'package:flutter/material.dart';

class PageControll extends StatefulWidget {
  const PageControll({Key? key}) : super(key: key);

  @override
  State<PageControll> createState() => _PageControllState();
}

class _PageControllState extends State<PageControll> {

  final PageController controller = PageController(
    viewportFraction: 1,
  );

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
                scrollDirection: Axis.vertical,
                allowImplicitScrolling: true,
                pageSnapping: true,
                controller: controller,
                itemCount: 5,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) async {
                  currentPage = index;
                },
                itemBuilder: (context, int index) {
                  List<Widget> pages = [
                    const MyHomePage(),
                    const DrawerPage(),
                    const MyNavigatorBar(),
                    const ProgressBar(),
                    const CardNFT(),
                  ];
                  return pages[index];
                }
            ),
          ),
        ],
      ),
    );
  }
}
