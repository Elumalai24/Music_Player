import 'package:flutter/material.dart';

class player extends StatefulWidget {
  const player({Key? key}) : super(key: key);

  @override
  State<player> createState() => _playerState();
}

class SongDetails {
  late String title;
//late String author;

}

class _playerState extends State<player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    'A Skyline-Lover',
                    style: TextStyle(fontSize: 20, color: Colors.black26),
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Card(
                          shape: CircleBorder(),
                          elevation: 5,
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.pink[50],
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.pink.shade100,
                                        blurRadius: 20)
                                  ]),
                              child: Icon(
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
                              BoxShadow(
                                  blurRadius: 10, color: Colors.pink.shade200)
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.sharechat.com/cartoondp_187ff5f5_1632206320012_sc_cmprsd_40.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      InkWell(
                        child: Card(
                          shape: CircleBorder(),
                          elevation: 5,
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.pink[50],
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.pink.shade100,
                                        blurRadius: 20)
                                  ]),
                              child: Icon(
                                Icons.more_horiz_outlined,
                                color: Colors.black38,
                              )),
                        ),
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
