// import 'package:audioplayers/audioplayers.dart';
// import 'package:ctf_game/models/audio_palyer.dart';
import 'package:ctf_game/models/responsive_screens.dart';
import 'package:ctf_game/screens/intro_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(172, 23, 23, 1),
      body: ResponsiveScreen(
        mainAreaProminence: 0.20,
        squarishMainArea: Center(
          child: Transform.rotate(
            angle: -0.1,
            child: const Text(
              'Capture The Flag!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Breaker',
                fontSize: 100,
                height: 1,
              ),
            ),
          ),
        ),
        rectangularMenuArea: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                // audioPlayer!.play(AssetSource('confirm_style_1_echo_001.wav'));
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IntroScreen();
                }));
              },
              child: Image.asset(
                'lib/assets/play.png',
                width: 70,
                height: 70,
              ),
            ),
            // Spacer(),
            SizedBox(
              width: 20,
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                // audioPlayer!.play(AssetSource('confirm_style_1_echo_001.wav'));
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return IntroScreen();
                // }));
              },
              child: Image.asset(
                'lib/assets/mute.png',
                width: 70,
                height: 70,
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 32),
            //   child: ValueListenableBuilder<bool>(
            //     valueListenable: settingsController.muted,
            //     builder: (context, muted, child) {
            //       return IconButton(
            //         onPressed: () => settingsController.toggleMuted(),
            //         icon: Icon(muted ? Icons.volume_off : Icons.volume_up),
            //       );
            //     },
            //   ),
            // ),
            // _gap,
            // const Text('Music by Mr Smith'),
            // _gap,
          ],
        ),
      ),
    );
  }
}
