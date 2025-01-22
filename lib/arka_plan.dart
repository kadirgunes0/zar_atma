
import 'package:flutter/material.dart';

import 'aktif_zar.dart';



const hizala1 = Alignment.bottomLeft;
const hizala2 = Alignment.topRight;

class Background extends StatelessWidget {
  const Background(this.a, this.b, {super.key});

  const Background.turuncu({super.key})
      : a = const Color.fromARGB(255, 255, 189, 91),
        b = Colors.deepOrange;

  final Color a;
  final Color b;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [a, b], begin: hizala1, end: hizala2),
      ),
      child: Center(
        child: ZarAtma()
      ),
    );
  }
}


