import 'package:flutter/material.dart';

class CardNFT extends StatefulWidget {
  const CardNFT({Key? key}) : super(key: key);

  @override
  State<CardNFT> createState() => _CardNFTState();
}

class _CardNFTState extends State<CardNFT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF14253D),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Card(
              color: const Color(0xFF14253D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              shadowColor: Colors.lightBlueAccent,
              elevation: 15,
              child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image(
                  image: AssetImage('assets/images/nft.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Equillibrium #3429',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyanAccent,
                    ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text('Nossa Coleção Equillibrium promove calma e balanço',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Expanded(
                      flex: 4,
                      child: Text('0.041 ETH',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.access_time_filled,  color: Colors.blueGrey, size: 18)),
                    Expanded(
                      flex: 2,
                      child: Text('restam 3 dias',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Divider(
                    height: 1,
                    color: Colors.blueGrey,
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      child: Image(
                        height: 40,
                        width: 40,
                        image: AssetImage('assets/images/photo.png'),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    RichText(
                      text: TextSpan(
                        text: 'Criado por: ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue[400],
                        ),
                        children: const [
                          TextSpan(text: 'Samuel R. Baioco', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}
