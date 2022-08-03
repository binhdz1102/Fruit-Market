import 'package:flutter/material.dart';

class IconDecIncButton {
  late double topPos;
  late double leftPos;
  late String signButton;

  IconDecIncButton(
      {required this.signButton, required this.topPos, required this.leftPos});

  Widget genIcon() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Align(
              child: Text(signButton),
            ),
            top: topPos,
            left: leftPos,
          ),
        ],
      ),
    );
  }
}