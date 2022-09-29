import 'package:ctf_game/Notes/notes_map_screen.dart';
import 'package:flutter/material.dart';

class IntroP1 extends StatefulWidget {
  const IntroP1({super.key, required this.backImg});
  final backImg;

  @override
  State<IntroP1> createState() => _IntroP1State();
}

class _IntroP1State extends State<IntroP1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Maps",
            style: TextStyle(fontFamily: 'Breaker', fontSize: 36),
          ),
          backgroundColor: Colors.transparent),
      backgroundColor: Color(0xFFEF1A1A),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/notes_snap.png'))),
            alignment: Alignment.center,
            // color: Color.fromRGBO(172, 23, 23, 1),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF353441))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NotesScreen();
                  }));
                },
                child: Text('Play',
                    style: TextStyle(
                        fontFamily: 'Breaker',
                        fontSize: 50,
                        fontWeight: FontWeight.w400))),
          ),
        ),
      ),
    );
  }
}
