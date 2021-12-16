import 'package:flutter/material.dart';
import 'tile.dart';

class Sec extends StatefulWidget {
  const Sec({Key? key}) : super(key: key);

  @override
  _SecState createState() => _SecState();
}

class _SecState extends State<Sec> {
  bool slct = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.menu,
                        color: Color(0xFF27396A),
                        size: 40,
                      ),
                      Icon(
                        Icons.add_alert,
                        color: Color(0xFF27396A),
                        size: 40,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: const [
                                Text(
                                  "Demo Name",
                                  style: TextStyle(
                                      color: Color(0xFF27396A),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Text(
                                    "0123456789",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.settings,
                        size: 40,
                        color: Color(0xFF27396A),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            "Express Package",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xFF27396A),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            "Silver Package",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xFF27396A),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            "Golden Package",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xFF27396A),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Tile(
                  slct: slct,
                  img: "images/bike1.png",
                  hed: "Planetarium",
                  sub: "Motorcycle / Scoo...",
                  hr: "1 hour - ",
                  mn: "Rs: 6.00",
                ),
                Tile(
                  slct: slct,
                  img: "images/jeep1.png",
                  hed: "Big Car",
                  sub: "Jeep / SUV",
                  hr: "1 hour - ",
                  mn: "Rs: 18.00",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

