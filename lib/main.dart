import 'package:flutter/material.dart';
import 'package:talk_ease/Constants/colors.dart';
import 'package:talk_ease/Screens/conversation_screen.dart';
import 'package:talk_ease/Screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Talkease',
      theme: ThemeData(
        scaffoldBackgroundColor: Pallete.bgColor,
        appBarTheme: const AppBarTheme(backgroundColor: Pallete.appbarColor),
        useMaterial3: true,
      ),
      home: const ConversationScreen(),
    );
  }
}
