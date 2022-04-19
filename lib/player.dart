import 'package:flutter/material.dart';

Widget musicDetails(String title, String singer) {
  return InkWell(
    child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(singer, style: const TextStyle(fontSize: 15)),
              ],
            ),
            InkWell(
              child: Card(
                shape: const CircleBorder(),
                elevation: 5,
                child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.pink[50],
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(color: Colors.pink.shade100, blurRadius: 20)
                        ]),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.black38,
                    )),
              ),
              onTap: () {},
            ),
          ],
        )),
    onTap: () {},
  );
}

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  dynamic color = Colors.pink[50];

  //IconData playIcon = Icons.play_arrow;
  late String title;
  late String singer;
  // late String icon;
  List listes = [
    {'title': 'Arabic Kuthu', 'singer': 'Aniruth'},
    {'title': 'Summa Surunu', 'singer': 'Imman'},
    {'title': 'Adiye', 'singer': 'G.v'},
    {'title': 'Vera Mari', 'singer': 'U1'},
    {'title': 'Arakiye', 'singer': 'hipop Adhi'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              'A Skyline-Lover',
              style: TextStyle(fontSize: 20, color: Colors.black26),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Card(
                    shape: const CircleBorder(),
                    elevation: 5,
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.pink[50],
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pink.shade100, blurRadius: 20)
                            ]),
                        child: const Icon(
                          Icons.star,
                          color: Colors.black38,
                        )),
                  ),
                  onTap: () {},
                ),
                Container(
                  height: 170,
                  width: 220,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.pink.shade200)
                      ],
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://cdn.sharechat.com/cartoondp_187ff5f5_1632206320012_sc_cmprsd_40.jpg'),
                          fit: BoxFit.cover)),
                ),
                InkWell(
                  child: Card(
                    shape: const CircleBorder(),
                    elevation: 5,
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.pink[50],
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pink.shade100, blurRadius: 20)
                            ]),
                        child: const Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.black38,
                        )),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                  itemCount: listes.length,
                  itemBuilder: (context, index) => musicDetails(
                        listes[index]['title'],
                        listes[index]['singer'],
                        //  listes[index]['playIcon']
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
