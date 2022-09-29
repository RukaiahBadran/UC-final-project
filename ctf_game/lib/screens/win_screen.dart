import 'package:ctf_game/models/responsive_screens.dart';
import 'package:ctf_game/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WinScreen extends StatelessWidget {
  const WinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF353441),
      body: ResponsiveScreen(
        squarishMainArea: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'You won!',
                style: TextStyle(
                    fontFamily: 'Breaker', fontSize: 100, color: Colors.white),
              ),
            ),
          ],
        ),
        rectangularMenuArea: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF1B1A1D))),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
          child: Text(
            'Continue',
            style: TextStyle(fontFamily: 'Breaker', fontSize: 58),
          ),
        ),
      ),
    );
  }
}
