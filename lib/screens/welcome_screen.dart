import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:champions_chat/components/my_canvas.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCanvas(children: [
        Row(
          children: [
            Container(
              child: Image.asset('images/logo.png'),
              height: 60.0,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Champions',
                  speed: Duration(milliseconds: 150),
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 48.0,
        ),
        Material(
          elevation: 5.0,
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            minWidth: 200,
            height: 42.0,
            onPressed: () {},
            child: Text(
              'Hello!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
