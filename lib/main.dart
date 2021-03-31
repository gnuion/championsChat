import 'package:champions_chat/screens/chat_screen.dart';
import 'package:champions_chat/screens/login_screen.dart';
import 'package:champions_chat/screens/registration_screen.dart';
import 'package:champions_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(ChampionsChat());

class ChampionsChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
