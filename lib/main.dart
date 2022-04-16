import 'package:flutter/material.dart';
import 'package:music_player_app/player.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isPlaying = false;
  var plybtn = Icons.play_arrow;
  String range = '';
  String start = 'hi';
  Duration begin = new Duration();
  Duration musicLength = new Duration();
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                Icons.arrow_back,
                                color: Colors.black38,
                              )),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => player()));
                        },
                      ),
                      Text(
                        'Now Playing',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
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
                                Icons.menu_outlined,
                                color: Colors.black38,
                              )),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Container(
                    height: 250,
                    width: 280,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 10, color: Colors.pink.shade200)
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.sharechat.com/cartoondp_187ff5f5_1632206320012_sc_cmprsd_40.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Awesome',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'A Skyline',
                    style: TextStyle(fontSize: 20, color: Colors.black26),
                  ),
                  SizedBox(height: 50),
                  Slider(
                      activeColor: Colors.pink[200],
                      inactiveColor: Colors.pink[200],
                      value: begin.inSeconds.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          range = '$begin';
                        });
                      },
                      min: 0,
                      max: musicLength.inSeconds.toDouble(),
                      onChangeStart: (state) => setState(() {
                            state = 5;
                          })),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Card(
                          shape: CircleBorder(),
                          elevation: 5,
                          child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.pink[50],
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.pink.shade100,
                                        blurRadius: 20)
                                  ]),
                              child: Icon(Icons.fast_rewind,
                                  color: Colors.black38, size: 32)),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Card(
                          shape: CircleBorder(),
                          elevation: 5,
                          child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.pink[50],
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.pink.shade100,
                                        blurRadius: 20)
                                  ]),
                              child: Icon(Icons.play_arrow,
                                  color: Colors.black38, size: 32)),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Card(
                          shape: CircleBorder(),
                          elevation: 5,
                          child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.pink[50],
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.pink.shade100,
                                        blurRadius: 20)
                                  ]),
                              child: Icon(Icons.fast_forward,
                                  color: Colors.black38, size: 32)),
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
