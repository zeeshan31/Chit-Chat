import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chitchat/components/roundedButton.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    controller.forward();
    animation =
        ColorTween(begin: Colors.black, end: Colors.white).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  speed: Duration(seconds: 1),
                  text: [" Chit Chat"],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Colors.lightBlueAccent,
              onpress: () {
                Navigator.pushNamed(context, '/1');
              },
              title:
                  'Login', //Colors.blueAccent, Navigator.pushNamed(context, '/2');
            ),
            RoundedButton(
              color: Colors.blueAccent,
              onpress: () {
                Navigator.pushNamed(context, '/2');
              },
              title: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}


