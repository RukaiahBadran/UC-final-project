import 'package:ctf_game/screens/home_screen.dart';
import 'package:ctf_game/screens/intro1.dart';
import 'package:ctf_game/screens/intro2.dart';
import 'package:ctf_game/screens/intro3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroP1(
                backImg: "lib/assets/notes_snap.png",
              ),
              IntroP2(),
              IntroP3(),
            ]),
        Container(
          alignment: Alignment(0, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        fontFamily: 'Breaker',
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  )),
              SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      activeDotColor: Color(0xFF6E0000),
                      dotColor: Color(0xFF353441))),
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                      child: Text('Done',
                          style: TextStyle(
                              fontFamily: 'Breaker',
                              fontSize: 36,
                              fontWeight: FontWeight.w600)),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.decelerate);
                      },
                      child: Text('Next',
                          style: TextStyle(
                              fontFamily: 'Breaker',
                              fontSize: 36,
                              fontWeight: FontWeight.w600)),
                    )
            ],
          ),
        )
      ]),
    );
  }
}
