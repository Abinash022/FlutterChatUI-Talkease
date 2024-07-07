import 'package:flutter/material.dart';
import 'package:talk_ease/Constants/colors.dart';

class StatusCard extends StatelessWidget {
  final bool isCurrentUser;
  final bool isStatusUnviewed;
  final bool isStatusMuted;
  final bool isStatusViewed;
  final String profileImage;
  final String username;
  final String description;
  const StatusCard(
      {super.key,
      required this.isCurrentUser,
      required this.isStatusUnviewed,
      required this.isStatusMuted,
      required this.isStatusViewed,
      required this.profileImage,
      required this.username,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: isCurrentUser
          ? Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Pallete.secondaryTextColor,
                  backgroundImage: NetworkImage(profileImage),
                  radius: 30.0,
                ),
                Positioned(
                  right: 0.0,
                  bottom: 4.0,
                  child: Container(
                    width: 17.0,
                    height: 17.0,
                    decoration: const BoxDecoration(
                      color: Pallete.appbarColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            )
          : isStatusUnviewed
              ? Container(
                  width: 64.0,
                  height: 64.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Pallete.appbarColor,
                      width: 3.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Pallete.secondaryTextColor,
                    backgroundImage: NetworkImage(
                      profileImage,
                    ),
                    radius: 30.0,
                  ),
                )
              : isStatusViewed
                  ? Container(
                      width: 64.0,
                      height: 64.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Pallete.mainTextColor,
                          width: 3.0,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Pallete.secondaryTextColor,
                        backgroundImage: NetworkImage(
                          profileImage,
                        ),
                        radius: 30.0,
                      ),
                    )
                  : CircleAvatar(
                      backgroundColor: Pallete.secondaryTextColor,
                      backgroundImage: NetworkImage(
                        profileImage,
                      ),
                      radius: 30.0,
                    ),
      title: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: isCurrentUser
            ? Text(
                username,
                style: const TextStyle(
                  color: Pallete.mainTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              )
            : Text(
                username,
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
          description,
          style: const TextStyle(
            color: Pallete.secondaryTextColor,
            fontWeight: FontWeight.w700,
            fontSize: 13.0,
          ),
        ),
      ),
    );
  }
}
