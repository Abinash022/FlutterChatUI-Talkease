import 'package:flutter/material.dart';
import 'package:talk_ease/Constants/colors.dart';
import 'package:talk_ease/Screens/call_screen.dart';
import 'package:talk_ease/Screens/status_screen.dart';
import 'package:talk_ease/Widgets/chat_card.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Talkease',
            style: TextStyle(
              color: Pallete.mainTextColor,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 25.0,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Pallete.mainTextColor,
                size: 30.0,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_sharp,
                color: Pallete.mainTextColor,
                size: 30.0,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Pallete.mainTextColor,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Text(
                  'Chats',
                  style: TextStyle(
                    color: Pallete.mainTextColor,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(
                    color: Pallete.mainTextColor,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                  style: TextStyle(
                    color: Pallete.mainTextColor,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatCard(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
