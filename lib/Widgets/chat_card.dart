import 'package:flutter/material.dart';
import 'package:talk_ease/Constants/colors.dart';
import 'package:talk_ease/Data/dummy_chat_data.dart';

class ChatCard extends StatefulWidget {
  const ChatCard({super.key});

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final data = dummyinfo[index];
          return InkWell(
            onTap: () {},
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Pallete.secondaryTextColor,
                backgroundImage: NetworkImage(data.profilePic),
                radius: 30.0,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  data.name,
                  style: const TextStyle(
                    color: Pallete.mainTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(
                  data.message,
                  style: const TextStyle(
                    color: Pallete.secondaryTextColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  data.time,
                  style: const TextStyle(
                    color: Color(0XFFa7a7a7),
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 3.0,
        ),
        itemCount: dummyinfo.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.buttonColor,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.textsms_outlined,
          color: Pallete.mainTextColor,
        ),
      ),
    );
  }
}
