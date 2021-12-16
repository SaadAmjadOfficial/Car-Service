import 'package:flutter/material.dart';
import 'boxes.dart';

// ignore: must_be_immutable
class Tile extends StatefulWidget {
  Tile(
      {Key? key,
      required this.slct,
      required this.img,
      required this.hed,
      required this.hr,
      required this.mn,
      required this.sub})
      : super(key: key);

  bool slct;
  final String img, hed, sub, hr, mn;

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.slct == true) {
            widget.slct = false;
          } else {
            widget.slct = true;
          }
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          color: Color(0xFFFFFFFF),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    widget.img,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.hed,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      widget.sub,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 17),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.hr,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          widget.mn,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: boxes(ischecked: widget.slct),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
