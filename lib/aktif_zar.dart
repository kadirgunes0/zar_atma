import 'dart:math';

import 'package:flutter/material.dart';

class ZarAtma extends StatefulWidget {
  const ZarAtma({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ZarAtmaState();
  }
}

class _ZarAtmaState extends State<ZarAtma> {
  var sayiDondurme = 'assets/images/dice-1.png';


  void zarat() {
  int random = Random().nextInt(6) + 1;
    setState(() {
      sayiDondurme = 'assets/images/dice-$random.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Zar at",
          style: TextStyle(
              color: Colors.white,
              fontSize: 100.0,
              fontStyle: FontStyle.italic),
        ),
        InkWell(
          onTap: () {
            zarat();
          },
          borderRadius: BorderRadius.circular(8),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              (sayiDondurme),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}