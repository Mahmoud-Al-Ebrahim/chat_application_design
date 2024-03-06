import 'package:chat_app/Screens/Welcome%20Screen/welcome_screen.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';

import 'Screens/chats/chats_screen.dart';
import 'Screens/messages/message_screen.dart';
import 'Screens/signinOrSignUp/signin_or_signup_screen.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: WelcomeScreen(),
      routes: {
        WelcomeScreen.route_name:(context)=>WelcomeScreen(),
        ChatsScreen.route_name:(context)=>ChatsScreen(),
        SigninOrSignupScreen.route_name:(context)=>SigninOrSignupScreen(),
        MessagesScreen.route_name:(context)=>MessagesScreen(),
      },
    );
  }
}
