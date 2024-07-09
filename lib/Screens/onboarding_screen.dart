import 'package:flutter/material.dart';
import 'package:talk_ease/Constants/colors.dart';
import 'package:talk_ease/Screens/conversation_screen.dart';
import 'package:talk_ease/Widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'Assets/Images/online-shopping-concept.png',
                  scale: 2.8,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Free Messaging and ',
                  style: TextStyle(
                    color: Pallete.mainTextColor,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                const Text(
                  'Calling App ',
                  style: TextStyle(
                    color: Pallete.mainTextColor,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Whether you are in your local country or abroad',
                  style: TextStyle(
                    color: Pallete.secondaryTextColor,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
                const Text(
                  'Chat seamlessly',
                  style: TextStyle(
                    color: Pallete.secondaryTextColor,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 60,
                  width: 380,
                  child: CustomElevatedButton(
                    text: 'Get Started',
                    fontSize: 17.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConversationScreen(),
                        ),
                      );
                    },
                    buttonColor: Pallete.buttonColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
