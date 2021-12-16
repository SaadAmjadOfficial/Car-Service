import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class boxes extends StatefulWidget {
  bool ischecked;
  // ignore: use_key_in_widget_constructors
  boxes({required this.ischecked});

  @override
  State<boxes> createState() => _boxesState();
}

// ignore: camel_case_types
class _boxesState extends State<boxes> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            color: widget.ischecked ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(10)),
        child: const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
    );
  }
}
