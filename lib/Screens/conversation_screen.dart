import 'package:flutter/material.dart';
import 'package:talk_ease/Constants/colors.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to Conversation Screen',
          style: TextStyle(color: Pallete.mainTextColor),
        ),
      ),
    );
  }
}
