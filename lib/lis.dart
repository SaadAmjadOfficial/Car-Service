import 'package:flutter/material.dart';
import 'boxes.dart';

// ignore: camel_case_types, must_be_immutable
class lis extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  lis(
      {required this.slct,
      required this.tex,
      required this.ico,
      required this.img});

  bool slct;
  final String tex;
  final String ico;
  final String img;

  @override
  State<lis> createState() => _lisState();
}

// ignore: camel_case_types
class _lisState extends State<lis> {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                boxes(ischecked: widget.slct),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  widget.tex,
                  style: TextStyle(
                      color:
                          widget.slct ? const Color(0xFF27396A) : Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 40),
            child: Image.asset(
              widget.slct ? widget.img : widget.ico,
              height: 50,
              width: 80,
            ),
          ),
        ],
      ),
    );
  }
}
