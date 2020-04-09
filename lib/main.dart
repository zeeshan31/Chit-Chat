import 'package:flutter/material.dart';
import 'package:chitchat/screens/welcome_screen.dart';
import 'package:chitchat/screens/login_screen.dart';
import 'package:chitchat/screens/registration_screen.dart';
import 'package:chitchat/screens/chat_screen.dart';

void main() => runApp(ChitChat());

class ChitChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context)=> WelcomeScreen(),
        '/1' : (context)=> LoginScreen(),
        '/2' : (context)=> RegistrationScreen(),
        '/3' : (context)=> ChatScreen()
      },
    );
  }
}
