import 'package:ctf_game/Notes/notes.dart';
import 'package:ctf_game/screens/check.dart';

import 'package:ctf_game/screens/cipheranddecipher.dart';
import 'package:ctf_game/screens/game-over.dart';

import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class NotesScreen extends StatefulWidget {
  NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  var Notes = [
    Note(
        title: 'UniCODE Tracks',
        body: "lib/assets/Unicode_Tracks.jpeg",
        description: "Jpyxxiv'm Rules :)"),
    Note(
        title: 'Burger',
        body: 'lib/assets/Burger.jpeg',
        description:
            'Bun \n Onion \n Tomato \n Pickels \n Lettuce \n Cheese \n texxc \n Bun'),
    Note(
        title: 'Cute Duck!!',
        body: 'lib/assets/duck.jpg',
        description: 'gyxi.jpg'),
    Note(title: 'mw', body: 'lib/assets/IS.jpeg', description: 'IS!!!'),
    Note(
        title: 'vmklx?',
        body: 'lib/assets/4-really.gif',
        description: '4-really.gif'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3D8D8),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFFB18B8B),
            title: Text(
              'Notes App',
              style: TextStyle(fontFamily: 'Breaker', fontSize: 36),
            ),
            floating: true,
            flexibleSpace: Flexible(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                TimerCountdown(
                  onEnd: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return GameOver();
                  })),
                  timeTextStyle: TextStyle(
                    fontFamily: 'Breaker',
                    fontSize: 30,
                  ),
                  format: CountDownTimerFormat.minutesSeconds,
                  endTime: DateTime.now().add(
                    Duration(
                      minutes: 2,
                    ),
                  ),
                ),
              ]),
            ),
            expandedHeight: 100,
            actions: [
              IconButton(
                icon: Icon(Icons.add_circle_outline_rounded),
                onPressed: () {
                  showDialog(
                      context: context, builder: (context) => CaesarCipher());
                },
              )
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                tileColor: Color(0xFFF3D8D8),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(Notes[index].title),
                            content: Image.asset(Notes[index].body),
                          ));
                },
                title: Text(Notes[index].title),
                subtitle: Text(Notes[index].description),
              ),
              childCount: Notes.length,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Check();
          }));
        },
        label: const Text('Approve'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
