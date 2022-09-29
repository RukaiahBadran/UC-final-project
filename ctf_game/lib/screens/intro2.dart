import 'package:flutter/material.dart';

class IntroP2 extends StatefulWidget {
  const IntroP2({super.key});

  @override
  State<IntroP2> createState() => _IntroP2State();
}

class _IntroP2State extends State<IntroP2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEF1A1A),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Color.fromRGBO(172, 23, 23, 1),
          ),
        ),
      ),
    );
  }
}
