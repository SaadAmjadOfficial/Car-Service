import 'package:carservice/second.dart';
import 'package:flutter/material.dart';
import 'lis.dart';

// ignore: use_key_in_widget_constructors
class Front extends StatefulWidget {
  @override
  _FrontState createState() => _FrontState();
}

class _FrontState extends State<Front> {
  bool slct = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: Image.asset(
                  "images/bg40.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(top: 32, left: 25),
                      child: const Text(
                        "Select one vehicle",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF27396A),
                            fontSize: 27),
                      ),
                    ),
                    lis(
                      slct: slct,
                      tex: "Bus / Truck",
                      ico: "images/bus1.png",
                      img: "images/bus.png",
                    ),
                    lis(
                      slct: slct,
                      tex: "Hatchback / Sedan",
                      ico: "images/hatchback1.png",
                      img: "images/hatchback.png",
                    ),
                    lis(
                      slct: slct,
                      tex: "Jeep / SUV",
                      ico: "images/jeep1.png",
                      img: "images/jeep.png",
                    ),
                    lis(
                      slct: slct,
                      tex: "Motorcycle / Scooter",
                      ico: "images/bike1.png",
                      img: "images/bike.png",
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sec()),
                          );
                        },
                        icon: const Icon(Icons.arrow_forward),
                        label: const Text("Continue",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          side: const BorderSide(color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
