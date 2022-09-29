import 'package:flutter/material.dart';

class IntroP3 extends StatefulWidget {
  const IntroP3({super.key});

  @override
  State<IntroP3> createState() => _IntroP3State();
}

class _IntroP3State extends State<IntroP3> {
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
