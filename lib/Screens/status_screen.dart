import 'package:flutter/material.dart';
import 'package:talk_ease/Constants/colors.dart';
import 'package:talk_ease/Data/status_data.dart';
import 'package:talk_ease/Widgets/status_card.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StatusCard(
              isCurrentUser: true,
              isStatusUnviewed: false,
              isStatusMuted: false,
              isStatusViewed: false,
              profileImage:
                  'https://assets.manutd.com/AssetPicker/images/0/0/10/126/687707/Legends-Profile_Cristiano-Ronaldo1523460877263.jpg',
              username: 'My Status',
              description: 'Tap to add status updates',
            ),
            // SizedBox(
            //   height: 17,
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Recent Updates',
                style: TextStyle(
                  color: Pallete.mainTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final data = recentUpdates[index];
                return StatusCard(
                  isCurrentUser: false,
                  isStatusUnviewed: true,
                  isStatusMuted: false,
                  isStatusViewed: false,
                  profileImage: data.profilePic,
                  username: data.name,
                  description: data.time,
                );
              },
              itemCount: recentUpdates.length,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Viewed Updates',
                    style: TextStyle(
                      color: Pallete.mainTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final data = viewedUpdates[index];
                    return StatusCard(
                      isCurrentUser: false,
                      isStatusUnviewed: false,
                      isStatusMuted: false,
                      isStatusViewed: true,
                      profileImage: data.profilePic,
                      username: data.name,
                      description: data.time,
                    );
                  },
                  itemCount: viewedUpdates.length,
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Muted Updates',
                    style: TextStyle(
                      color: Pallete.mainTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final data = mutedUpdates[index];
                    return StatusCard(
                      isCurrentUser: false,
                      isStatusUnviewed: false,
                      isStatusMuted: true,
                      isStatusViewed: false,
                      profileImage: data.profilePic,
                      username: data.name,
                      description: data.time,
                    );
                  },
                  itemCount: mutedUpdates.length,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Pallete.buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () {},
            child: const Icon(
              Icons.phone_sharp,
              color: Pallete.mainTextColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Pallete.buttonColor,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Icons.camera_alt_outlined,
              color: Pallete.mainTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
